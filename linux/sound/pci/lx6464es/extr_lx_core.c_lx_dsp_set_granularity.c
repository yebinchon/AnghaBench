
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * cmd; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_02_SET_GRANULARITY ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_dsp_set_granularity(struct lx6464es *chip, u32 gran)
{
 int ret;

 mutex_lock(&chip->msg_lock);

 lx_message_init(&chip->rmh, CMD_02_SET_GRANULARITY);
 chip->rmh.cmd[0] |= gran;

 ret = lx_message_send_atomic(chip, &chip->rmh);
 mutex_unlock(&chip->msg_lock);
 return ret;
}
