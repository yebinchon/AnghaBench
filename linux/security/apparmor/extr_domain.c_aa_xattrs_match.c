
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct linux_binprm {TYPE_2__* file; } ;
struct dentry {int dummy; } ;
struct aa_profile {int xattr_count; int xmatch; int * xattrs; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int MAY_EXEC ;
 unsigned int aa_dfa_match_len (int ,unsigned int,char*,scalar_t__) ;
 unsigned int aa_dfa_null_transition (int ,unsigned int) ;
 int dfa_user_allow (int ,unsigned int) ;
 int kfree (char*) ;
 scalar_t__ vfs_getxattr_alloc (struct dentry*,int ,char**,int,int ) ;

__attribute__((used)) static int aa_xattrs_match(const struct linux_binprm *bprm,
      struct aa_profile *profile, unsigned int state)
{
 int i;
 ssize_t size;
 struct dentry *d;
 char *value = ((void*)0);
 int value_size = 0, ret = profile->xattr_count;

 if (!bprm || !profile->xattr_count)
  return 0;


 state = aa_dfa_null_transition(profile->xmatch, state);

 d = bprm->file->f_path.dentry;

 for (i = 0; i < profile->xattr_count; i++) {
  size = vfs_getxattr_alloc(d, profile->xattrs[i], &value,
       value_size, GFP_KERNEL);
  if (size >= 0) {
   u32 perm;


   state = aa_dfa_match_len(profile->xmatch, state, value,
       size);
   perm = dfa_user_allow(profile->xmatch, state);
   if (!(perm & MAY_EXEC)) {
    ret = -EINVAL;
    goto out;
   }
  }

  state = aa_dfa_null_transition(profile->xmatch, state);
  if (size < 0) {





   if (!state) {
    ret = -EINVAL;
    goto out;
   }

   ret--;
  }
 }

out:
 kfree(value);
 return ret;
}
