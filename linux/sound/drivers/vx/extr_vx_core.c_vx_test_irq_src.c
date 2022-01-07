
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* Stat; } ;
struct vx_core {int lock; TYPE_1__ irq_rmh; } ;


 int CMD_TEST_IT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vx_init_rmh (TYPE_1__*,int ) ;
 int vx_send_msg_nolock (struct vx_core*,TYPE_1__*) ;

__attribute__((used)) static int vx_test_irq_src(struct vx_core *chip, unsigned int *ret)
{
 int err;

 vx_init_rmh(&chip->irq_rmh, CMD_TEST_IT);
 mutex_lock(&chip->lock);
 err = vx_send_msg_nolock(chip, &chip->irq_rmh);
 if (err < 0)
  *ret = 0;
 else
  *ret = chip->irq_rmh.Stat[0];
 mutex_unlock(&chip->lock);
 return err;
}
