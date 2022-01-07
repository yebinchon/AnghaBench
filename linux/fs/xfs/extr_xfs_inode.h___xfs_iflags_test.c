
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short i_flags; } ;
typedef TYPE_1__ xfs_inode_t ;



__attribute__((used)) static inline int
__xfs_iflags_test(xfs_inode_t *ip, unsigned short flags)
{
 return (ip->i_flags & flags);
}
