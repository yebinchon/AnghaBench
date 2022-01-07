
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int group_id; int user_id; int user_ns; scalar_t__ allow_other; } ;
struct cred {int gid; int sgid; int egid; int uid; int suid; int euid; } ;


 struct cred* current_cred () ;
 int current_in_userns (int ) ;
 scalar_t__ gid_eq (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

int fuse_allow_current_process(struct fuse_conn *fc)
{
 const struct cred *cred;

 if (fc->allow_other)
  return current_in_userns(fc->user_ns);

 cred = current_cred();
 if (uid_eq(cred->euid, fc->user_id) &&
     uid_eq(cred->suid, fc->user_id) &&
     uid_eq(cred->uid, fc->user_id) &&
     gid_eq(cred->egid, fc->group_id) &&
     gid_eq(cred->sgid, fc->group_id) &&
     gid_eq(cred->gid, fc->group_id))
  return 1;

 return 0;
}
