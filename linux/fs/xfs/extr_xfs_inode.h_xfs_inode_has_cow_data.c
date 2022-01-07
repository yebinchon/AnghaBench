
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {TYPE_1__* i_cowfp; } ;
struct TYPE_2__ {scalar_t__ if_bytes; } ;



__attribute__((used)) static inline bool xfs_inode_has_cow_data(struct xfs_inode *ip)
{
 return ip->i_cowfp && ip->i_cowfp->if_bytes;
}
