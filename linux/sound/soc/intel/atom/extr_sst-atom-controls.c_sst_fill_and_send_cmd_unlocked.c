
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sst_data {int byte_stream; } ;
struct TYPE_4__ {int dev; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* send_byte_stream ) (int ,int ) ;} ;


 TYPE_2__* sst ;
 int sst_fill_byte_control (struct sst_data*,int ,int ,int ,int ,int ,void*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int sst_fill_and_send_cmd_unlocked(struct sst_data *drv,
     u8 ipc_msg, u8 block, u8 task_id, u8 pipe_id,
     void *cmd_data, u16 len)
{
 int ret = 0;

 ret = sst_fill_byte_control(drv, ipc_msg,
    block, task_id, pipe_id, len, cmd_data);
 if (ret < 0)
  return ret;
 return sst->ops->send_byte_stream(sst->dev, drv->byte_stream);
}
