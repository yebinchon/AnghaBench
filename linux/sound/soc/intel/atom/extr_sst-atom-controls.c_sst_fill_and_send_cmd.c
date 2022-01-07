
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sst_data {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_fill_and_send_cmd_unlocked (struct sst_data*,int ,int ,int ,int ,void*,int ) ;

__attribute__((used)) static int sst_fill_and_send_cmd(struct sst_data *drv,
     u8 ipc_msg, u8 block, u8 task_id, u8 pipe_id,
     void *cmd_data, u16 len)
{
 int ret;

 mutex_lock(&drv->lock);
 ret = sst_fill_and_send_cmd_unlocked(drv, ipc_msg, block,
     task_id, pipe_id, cmd_data, len);
 mutex_unlock(&drv->lock);

 return ret;
}
