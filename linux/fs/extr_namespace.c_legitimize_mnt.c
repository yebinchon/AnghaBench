
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;


 int __legitimize_mnt (struct vfsmount*,unsigned int) ;
 scalar_t__ likely (int) ;
 int mntput (struct vfsmount*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

bool legitimize_mnt(struct vfsmount *bastard, unsigned seq)
{
 int res = __legitimize_mnt(bastard, seq);
 if (likely(!res))
  return 1;
 if (unlikely(res < 0)) {
  rcu_read_unlock();
  mntput(bastard);
  rcu_read_lock();
 }
 return 0;
}
