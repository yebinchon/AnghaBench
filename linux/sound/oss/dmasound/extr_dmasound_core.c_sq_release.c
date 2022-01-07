
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_4__ {int owner; int default_hard; } ;
struct TYPE_6__ {TYPE_1__ mach; int hard; } ;
struct TYPE_5__ {scalar_t__ busy; } ;


 int FMODE_WRITE ;
 TYPE_3__ dmasound ;
 int dmasound_core_mutex ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_sq_wake_up (struct file*) ;
 int shared_resource_owner ;
 scalar_t__ shared_resources_initialised ;
 int sq_fsync () ;
 int sq_reset_output () ;
 TYPE_2__ write_sq ;
 int write_sq_release_buffers () ;
 int write_sq_wake_up (struct file*) ;

__attribute__((used)) static int sq_release(struct inode *inode, struct file *file)
{
 int rc = 0;

 mutex_lock(&dmasound_core_mutex);

 if (file->f_mode & FMODE_WRITE) {
  if (write_sq.busy)
   rc = sq_fsync();

  sq_reset_output() ;
  write_sq_release_buffers();
  write_sq.busy = 0;
 }

 if (file->f_mode & shared_resource_owner) {
  shared_resource_owner = 0 ;
  shared_resources_initialised = 0 ;
  dmasound.hard = dmasound.mach.default_hard ;
 }

 module_put(dmasound.mach.owner);
 mutex_unlock(&dmasound_core_mutex);

 return rc;
}
