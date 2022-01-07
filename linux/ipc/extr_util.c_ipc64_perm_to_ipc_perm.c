
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;


 int SET_GID (int ,int ) ;
 int SET_UID (int ,int ) ;

void ipc64_perm_to_ipc_perm(struct ipc64_perm *in, struct ipc_perm *out)
{
 out->key = in->key;
 SET_UID(out->uid, in->uid);
 SET_GID(out->gid, in->gid);
 SET_UID(out->cuid, in->cuid);
 SET_GID(out->cgid, in->cgid);
 out->mode = in->mode;
 out->seq = in->seq;
}
