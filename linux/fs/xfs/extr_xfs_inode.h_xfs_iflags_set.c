
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_flags_lock; } ;
typedef TYPE_1__ xfs_inode_t ;


 int __xfs_iflags_set (TYPE_1__*,unsigned short) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
xfs_iflags_set(xfs_inode_t *ip, unsigned short flags)
{
 spin_lock(&ip->i_flags_lock);
 __xfs_iflags_set(ip, flags);
 spin_unlock(&ip->i_flags_lock);
}
