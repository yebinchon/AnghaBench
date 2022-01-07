
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt_root; } ;
struct mount {TYPE_1__ mnt; } ;


 int lock_mount_hash () ;
 scalar_t__ mnt_ns_loop (int ) ;
 struct mount* next_mnt (struct mount*,struct mount*) ;
 int unlock_mount_hash () ;

__attribute__((used)) static bool check_for_nsfs_mounts(struct mount *subtree)
{
 struct mount *p;
 bool ret = 0;

 lock_mount_hash();
 for (p = subtree; p; p = next_mnt(p, subtree))
  if (mnt_ns_loop(p->mnt.mnt_root))
   goto out;

 ret = 1;
out:
 unlock_mount_hash();
 return ret;
}
