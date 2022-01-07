
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;
struct compat_ipc64_perm {int seq; int mode; int cgid; int cuid; int gid; int uid; int key; } ;



void to_compat_ipc64_perm(struct compat_ipc64_perm *to, struct ipc64_perm *from)
{
 to->key = from->key;
 to->uid = from->uid;
 to->gid = from->gid;
 to->cuid = from->cuid;
 to->cgid = from->cgid;
 to->mode = from->mode;
 to->seq = from->seq;
}
