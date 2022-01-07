
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mnt; } ;
struct file {TYPE_2__ f_path; } ;
typedef enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int EPERM ;
 scalar_t__ IS_ERR_OR_NULL (struct super_block*) ;
 int check_pinning_enforcement (struct super_block*) ;
 int enforce ;
 scalar_t__* ignore_read_file_id ;
 char* kernel_read_file_id_str (int) ;
 struct super_block* pinned_root ;
 int pinned_root_spinlock ;
 int report_load (char const*,struct file*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int loadpin_read_file(struct file *file, enum kernel_read_file_id id)
{
 struct super_block *load_root;
 const char *origin = kernel_read_file_id_str(id);


 if ((unsigned int)id < ARRAY_SIZE(ignore_read_file_id) &&
     ignore_read_file_id[id]) {
  report_load(origin, file, "pinning-excluded");
  return 0;
 }


 if (!file) {
  if (!enforce) {
   report_load(origin, ((void*)0), "old-api-pinning-ignored");
   return 0;
  }

  report_load(origin, ((void*)0), "old-api-denied");
  return -EPERM;
 }

 load_root = file->f_path.mnt->mnt_sb;


 spin_lock(&pinned_root_spinlock);




 if (!pinned_root) {
  pinned_root = load_root;






  spin_unlock(&pinned_root_spinlock);
  check_pinning_enforcement(pinned_root);
  report_load(origin, file, "pinned");
 } else {
  spin_unlock(&pinned_root_spinlock);
 }

 if (IS_ERR_OR_NULL(pinned_root) || load_root != pinned_root) {
  if (unlikely(!enforce)) {
   report_load(origin, file, "pinning-ignored");
   return 0;
  }

  report_load(origin, file, "denied");
  return -EPERM;
 }

 return 0;
}
