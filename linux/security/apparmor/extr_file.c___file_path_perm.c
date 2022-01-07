
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct path_cond {int mode; int uid; } ;
struct file {int f_path; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int i_mode; int i_uid; } ;


 int PATH_DELEGATE_DELETED ;
 int PATH_IS_DIR ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ aa_label_is_subset (struct aa_label*,struct aa_label*) ;
 int file_ctx (struct file*) ;
 TYPE_1__* file_inode (struct file*) ;
 int fn_for_each (struct aa_label*,struct aa_profile*,int ) ;
 int fn_for_each_not_in_set (struct aa_label*,struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*) ;
 int profile_path_perm (char const*,struct aa_profile*,int *,char*,scalar_t__,struct path_cond*,int,struct aa_perms*) ;
 int put_buffers (char*) ;
 int update_file_ctx (int ,struct aa_label*,scalar_t__) ;

__attribute__((used)) static int __file_path_perm(const char *op, struct aa_label *label,
       struct aa_label *flabel, struct file *file,
       u32 request, u32 denied)
{
 struct aa_profile *profile;
 struct aa_perms perms = {};
 struct path_cond cond = {
  .uid = file_inode(file)->i_uid,
  .mode = file_inode(file)->i_mode
 };
 char *buffer;
 int flags, error;


 if (!denied && aa_label_is_subset(flabel, label))

  return 0;

 flags = PATH_DELEGATE_DELETED | (S_ISDIR(cond.mode) ? PATH_IS_DIR : 0);
 get_buffers(buffer);


 error = fn_for_each_not_in_set(flabel, label, profile,
   profile_path_perm(op, profile, &file->f_path, buffer,
       request, &cond, flags, &perms));
 if (denied && !error) {
  if (label == flabel)
   error = fn_for_each(label, profile,
    profile_path_perm(op, profile, &file->f_path,
        buffer, request, &cond, flags,
        &perms));
  else
   error = fn_for_each_not_in_set(label, flabel, profile,
    profile_path_perm(op, profile, &file->f_path,
        buffer, request, &cond, flags,
        &perms));
 }
 if (!error)
  update_file_ctx(file_ctx(file), label, request);

 put_buffers(buffer);

 return error;
}
