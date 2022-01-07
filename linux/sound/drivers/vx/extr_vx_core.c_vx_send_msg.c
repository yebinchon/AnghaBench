
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_rmh {int dummy; } ;
struct vx_core {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vx_send_msg_nolock (struct vx_core*,struct vx_rmh*) ;

int vx_send_msg(struct vx_core *chip, struct vx_rmh *rmh)
{
 int err;

 mutex_lock(&chip->lock);
 err = vx_send_msg_nolock(chip, rmh);
 mutex_unlock(&chip->lock);
 return err;
}
