
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int mode; int gid; int uid; } ;
struct ipc64_perm {int mode; int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int EINVAL ;
 int S_IRWXUGO ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 int uid_valid (int ) ;

int ipc_update_perm(struct ipc64_perm *in, struct kern_ipc_perm *out)
{
 kuid_t uid = make_kuid(current_user_ns(), in->uid);
 kgid_t gid = make_kgid(current_user_ns(), in->gid);
 if (!uid_valid(uid) || !gid_valid(gid))
  return -EINVAL;

 out->uid = uid;
 out->gid = gid;
 out->mode = (out->mode & ~S_IRWXUGO)
  | (in->mode & S_IRWXUGO);

 return 0;
}
