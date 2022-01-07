
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct compat_ipc_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;


 int SET_GID (int ,int ) ;
 int SET_UID (int ,int ) ;

void to_compat_ipc_perm(struct compat_ipc_perm *to, struct ipc64_perm *from)
{
 to->key = from->key;
 SET_UID(to->uid, from->uid);
 SET_GID(to->gid, from->gid);
 SET_UID(to->cuid, from->cuid);
 SET_GID(to->cgid, from->cgid);
 to->mode = from->mode;
 to->seq = from->seq;
}
