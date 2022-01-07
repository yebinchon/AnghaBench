
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct path {int dentry; struct vfsmount* mnt; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*) ;
 int profile_umount (struct aa_profile*,struct path*,char*) ;
 int put_buffers (char*) ;

int aa_umount(struct aa_label *label, struct vfsmount *mnt, int flags)
{
 struct aa_profile *profile;
 char *buffer = ((void*)0);
 int error;
 struct path path = { .mnt = mnt, .dentry = mnt->mnt_root };

 AA_BUG(!label);
 AA_BUG(!mnt);

 get_buffers(buffer);
 error = fn_for_each_confined(label, profile,
   profile_umount(profile, &path, buffer));
 put_buffers(buffer);

 return error;
}
