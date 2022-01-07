
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short i_flags; int i_flags_lock; } ;
typedef TYPE_1__ xfs_inode_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int
xfs_iflags_test_and_clear(xfs_inode_t *ip, unsigned short flags)
{
 int ret;

 spin_lock(&ip->i_flags_lock);
 ret = ip->i_flags & flags;
 if (ret)
  ip->i_flags &= ~flags;
 spin_unlock(&ip->i_flags_lock);
 return ret;
}
