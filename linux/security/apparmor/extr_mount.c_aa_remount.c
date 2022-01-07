
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {TYPE_3__* dentry; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_6__ {TYPE_2__* d_sb; } ;
struct TYPE_5__ {TYPE_1__* s_type; } ;
struct TYPE_4__ {int fs_flags; } ;


 int AA_BUG (int) ;
 int FS_BINARY_MOUNTDATA ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int get_buffers (char*) ;
 int match_mnt (struct aa_profile*,struct path const*,char*,int *,int *,int *,unsigned long,void*,int) ;
 int put_buffers (char*) ;

int aa_remount(struct aa_label *label, const struct path *path,
        unsigned long flags, void *data)
{
 struct aa_profile *profile;
 char *buffer = ((void*)0);
 bool binary;
 int error;

 AA_BUG(!label);
 AA_BUG(!path);

 binary = path->dentry->d_sb->s_type->fs_flags & FS_BINARY_MOUNTDATA;

 get_buffers(buffer);
 error = fn_for_each_confined(label, profile,
   match_mnt(profile, path, buffer, ((void*)0), ((void*)0), ((void*)0),
      flags, data, binary));
 put_buffers(buffer);

 return error;
}
