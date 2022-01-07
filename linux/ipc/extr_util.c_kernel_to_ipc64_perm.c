
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct ipc64_perm {int seq; int mode; void* cgid; void* cuid; void* gid; void* uid; int key; } ;


 int current_user_ns () ;
 void* from_kgid_munged (int ,int ) ;
 void* from_kuid_munged (int ,int ) ;

void kernel_to_ipc64_perm(struct kern_ipc_perm *in, struct ipc64_perm *out)
{
 out->key = in->key;
 out->uid = from_kuid_munged(current_user_ns(), in->uid);
 out->gid = from_kgid_munged(current_user_ns(), in->gid);
 out->cuid = from_kuid_munged(current_user_ns(), in->cuid);
 out->cgid = from_kgid_munged(current_user_ns(), in->cgid);
 out->mode = in->mode;
 out->seq = in->seq;
}
