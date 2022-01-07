
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct linux_binprm {TYPE_4__* cred; int per_clear; TYPE_3__* file; } ;
struct inode {unsigned int i_mode; int i_gid; int i_uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_8__ {int egid; int euid; int user_ns; } ;
struct TYPE_6__ {TYPE_1__* dentry; int mnt; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int PER_CLEAR_ON_SETID ;
 unsigned int READ_ONCE (unsigned int) ;
 unsigned int S_ISGID ;
 unsigned int S_ISUID ;
 unsigned int S_IXGRP ;
 int current ;
 int current_egid () ;
 int current_euid () ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kgid_has_mapping (int ,int ) ;
 int kuid_has_mapping (int ,int ) ;
 int mnt_may_suid (int ) ;
 scalar_t__ task_no_new_privs (int ) ;

__attribute__((used)) static void bprm_fill_uid(struct linux_binprm *bprm)
{
 struct inode *inode;
 unsigned int mode;
 kuid_t uid;
 kgid_t gid;







 bprm->cred->euid = current_euid();
 bprm->cred->egid = current_egid();

 if (!mnt_may_suid(bprm->file->f_path.mnt))
  return;

 if (task_no_new_privs(current))
  return;

 inode = bprm->file->f_path.dentry->d_inode;
 mode = READ_ONCE(inode->i_mode);
 if (!(mode & (S_ISUID|S_ISGID)))
  return;


 inode_lock(inode);


 mode = inode->i_mode;
 uid = inode->i_uid;
 gid = inode->i_gid;
 inode_unlock(inode);


 if (!kuid_has_mapping(bprm->cred->user_ns, uid) ||
   !kgid_has_mapping(bprm->cred->user_ns, gid))
  return;

 if (mode & S_ISUID) {
  bprm->per_clear |= PER_CLEAR_ON_SETID;
  bprm->cred->euid = uid;
 }

 if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP)) {
  bprm->per_clear |= PER_CLEAR_ON_SETID;
  bprm->cred->egid = gid;
 }
}
