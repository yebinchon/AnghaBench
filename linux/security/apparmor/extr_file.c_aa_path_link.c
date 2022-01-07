
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path_cond {int member_1; int member_0; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int i_mode; int i_uid; } ;


 TYPE_1__* d_backing_inode (struct dentry*) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*,char*) ;
 int profile_path_link (struct aa_profile*,struct path*,char*,struct path*,char*,struct path_cond*) ;
 int put_buffers (char*,char*) ;

int aa_path_link(struct aa_label *label, struct dentry *old_dentry,
   const struct path *new_dir, struct dentry *new_dentry)
{
 struct path link = { .mnt = new_dir->mnt, .dentry = new_dentry };
 struct path target = { .mnt = new_dir->mnt, .dentry = old_dentry };
 struct path_cond cond = {
  d_backing_inode(old_dentry)->i_uid,
  d_backing_inode(old_dentry)->i_mode
 };
 char *buffer = ((void*)0), *buffer2 = ((void*)0);
 struct aa_profile *profile;
 int error;


 get_buffers(buffer, buffer2);
 error = fn_for_each_confined(label, profile,
   profile_path_link(profile, &link, buffer, &target,
       buffer2, &cond));
 put_buffers(buffer, buffer2);

 return error;
}
