
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int stat_len; int stat; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_04_GET_EVENT ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_dsp_read_async_events(struct lx6464es *chip, u32 *data)
{
 int ret;

 mutex_lock(&chip->msg_lock);

 lx_message_init(&chip->rmh, CMD_04_GET_EVENT);
 chip->rmh.stat_len = 9;

 ret = lx_message_send_atomic(chip, &chip->rmh);

 if (!ret)
  memcpy(data, chip->rmh.stat, chip->rmh.stat_len * sizeof(u32));

 mutex_unlock(&chip->msg_lock);
 return ret;
}
