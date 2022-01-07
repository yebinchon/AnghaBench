
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int di_flags2; } ;
struct xfs_inode {TYPE_1__ i_d; } ;


 int XFS_DIFLAG2_REFLINK ;

__attribute__((used)) static inline bool xfs_is_reflink_inode(struct xfs_inode *ip)
{
 return ip->i_d.di_flags2 & XFS_DIFLAG2_REFLINK;
}
