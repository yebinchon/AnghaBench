
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vx_send_rih_nolock (struct vx_core*,int) ;

int vx_send_rih(struct vx_core *chip, int cmd)
{
 int err;

 mutex_lock(&chip->lock);
 err = vx_send_rih_nolock(chip, cmd);
 mutex_unlock(&chip->lock);
 return err;
}
