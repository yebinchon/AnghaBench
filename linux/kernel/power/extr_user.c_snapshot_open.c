
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot_handle {int dummy; } ;
struct snapshot_data {int swap; int mode; int free_bitmaps; int frozen; int ready; int platform_support; int handle; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snapshot_data* private_data; } ;


 int EBUSY ;
 int ENOSYS ;
 int EPERM ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int PM_HIBERNATION_PREPARE ;
 int PM_POST_HIBERNATION ;
 int PM_POST_RESTORE ;
 int PM_RESTORE_PREPARE ;
 int __pm_notifier_call_chain (int ,int,int*) ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 int create_basic_memory_bitmaps () ;
 int hibernation_available () ;
 int lock_system_sleep () ;
 int memset (int *,int ,int) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int snapshot_device_available ;
 struct snapshot_data snapshot_state ;
 int swap_type_of (scalar_t__,int ,int *) ;
 scalar_t__ swsusp_resume_device ;
 int unlock_system_sleep () ;
 int wait_for_device_probe () ;

__attribute__((used)) static int snapshot_open(struct inode *inode, struct file *filp)
{
 struct snapshot_data *data;
 int error, nr_calls = 0;

 if (!hibernation_available())
  return -EPERM;

 lock_system_sleep();

 if (!atomic_add_unless(&snapshot_device_available, -1, 0)) {
  error = -EBUSY;
  goto Unlock;
 }

 if ((filp->f_flags & O_ACCMODE) == O_RDWR) {
  atomic_inc(&snapshot_device_available);
  error = -ENOSYS;
  goto Unlock;
 }
 nonseekable_open(inode, filp);
 data = &snapshot_state;
 filp->private_data = data;
 memset(&data->handle, 0, sizeof(struct snapshot_handle));
 if ((filp->f_flags & O_ACCMODE) == O_RDONLY) {

  data->swap = swsusp_resume_device ?
   swap_type_of(swsusp_resume_device, 0, ((void*)0)) : -1;
  data->mode = O_RDONLY;
  data->free_bitmaps = 0;
  error = __pm_notifier_call_chain(PM_HIBERNATION_PREPARE, -1, &nr_calls);
  if (error)
   __pm_notifier_call_chain(PM_POST_HIBERNATION, --nr_calls, ((void*)0));
 } else {




  wait_for_device_probe();

  data->swap = -1;
  data->mode = O_WRONLY;
  error = __pm_notifier_call_chain(PM_RESTORE_PREPARE, -1, &nr_calls);
  if (!error) {
   error = create_basic_memory_bitmaps();
   data->free_bitmaps = !error;
  } else
   nr_calls--;

  if (error)
   __pm_notifier_call_chain(PM_POST_RESTORE, nr_calls, ((void*)0));
 }
 if (error)
  atomic_inc(&snapshot_device_available);

 data->frozen = 0;
 data->ready = 0;
 data->platform_support = 0;

 Unlock:
 unlock_system_sleep();

 return error;
}
