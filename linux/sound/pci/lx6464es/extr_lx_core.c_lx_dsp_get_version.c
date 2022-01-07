
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int * stat; } ;
struct lx6464es {int msg_lock; TYPE_1__ rmh; } ;


 int CMD_01_GET_SYS_CFG ;
 int lx_message_init (TYPE_1__*,int ) ;
 int lx_message_send_atomic (struct lx6464es*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lx_dsp_get_version(struct lx6464es *chip, u32 *rdsp_version)
{
 u16 ret;

 mutex_lock(&chip->msg_lock);

 lx_message_init(&chip->rmh, CMD_01_GET_SYS_CFG);
 ret = lx_message_send_atomic(chip, &chip->rmh);

 *rdsp_version = chip->rmh.stat[1];
 mutex_unlock(&chip->msg_lock);
 return ret;
}
