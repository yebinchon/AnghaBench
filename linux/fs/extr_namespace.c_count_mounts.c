
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct mnt_namespace {unsigned int mounts; unsigned int pending_mounts; } ;


 int ENOSPC ;
 unsigned int READ_ONCE (int ) ;
 struct mount* next_mnt (struct mount*,struct mount*) ;
 int sysctl_mount_max ;

int count_mounts(struct mnt_namespace *ns, struct mount *mnt)
{
 unsigned int max = READ_ONCE(sysctl_mount_max);
 unsigned int mounts = 0, old, pending, sum;
 struct mount *p;

 for (p = mnt; p; p = next_mnt(p, mnt))
  mounts++;

 old = ns->mounts;
 pending = ns->pending_mounts;
 sum = old + pending;
 if ((old > sum) ||
     (pending > sum) ||
     (max < sum) ||
     (mounts > (max - sum)))
  return -ENOSPC;

 ns->pending_mounts = pending + mounts;
 return 0;
}
