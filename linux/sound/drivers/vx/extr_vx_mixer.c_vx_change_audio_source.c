
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {int chip_status; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change_audio_source ) (struct vx_core*,int) ;} ;


 int VX_STAT_IS_STALE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct vx_core*,int) ;

__attribute__((used)) static void vx_change_audio_source(struct vx_core *chip, int src)
{
 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 mutex_lock(&chip->lock);
 chip->ops->change_audio_source(chip, src);
 mutex_unlock(&chip->lock);
}
