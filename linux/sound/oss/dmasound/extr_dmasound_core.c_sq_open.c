
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_3__ {int owner; int default_hard; int default_soft; int (* sq_open ) (int) ;} ;
struct TYPE_4__ {int minDev; TYPE_1__ mach; int hard; int dsp; int soft; } ;


 int AFMT_MU_LAW ;
 int ENODEV ;
 int ENXIO ;
 int FMODE_READ ;
 int SND_DEV_AUDIO ;
 TYPE_2__ dmasound ;
 int dmasound_core_mutex ;
 int iminor (struct inode*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ shared_resource_owner ;
 int sound_set_format (int ) ;
 int sound_set_speed (int) ;
 int sound_set_stereo (int ) ;
 int stub1 (int) ;
 int try_module_get (int ) ;
 int write_sq_open (struct file*) ;

__attribute__((used)) static int sq_open(struct inode *inode, struct file *file)
{
 int rc;

 mutex_lock(&dmasound_core_mutex);
 if (!try_module_get(dmasound.mach.owner)) {
  mutex_unlock(&dmasound_core_mutex);
  return -ENODEV;
 }

 rc = write_sq_open(file);
 if (rc)
  goto out;
 if (file->f_mode & FMODE_READ) {

  rc = -ENXIO ;
  goto out;
 }

 if (dmasound.mach.sq_open)
     dmasound.mach.sq_open(file->f_mode);





 dmasound.minDev = iminor(inode) & 0x0f;






 if (shared_resource_owner == 0) {


  dmasound.soft = dmasound.mach.default_soft ;
  dmasound.dsp = dmasound.mach.default_soft ;
  dmasound.hard = dmasound.mach.default_hard ;
 }





 if (dmasound.minDev == SND_DEV_AUDIO) {
  sound_set_speed(8000);
  sound_set_stereo(0);
  sound_set_format(AFMT_MU_LAW);
 }

 mutex_unlock(&dmasound_core_mutex);
 return 0;
 out:
 module_put(dmasound.mach.owner);
 mutex_unlock(&dmasound_core_mutex);
 return rc;
}
