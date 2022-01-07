
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 scalar_t__ xfs_is_always_cow_inode (struct xfs_inode*) ;
 scalar_t__ xfs_is_reflink_inode (struct xfs_inode*) ;

__attribute__((used)) static inline bool xfs_is_cow_inode(struct xfs_inode *ip)
{
 return xfs_is_reflink_inode(ip) || xfs_is_always_cow_inode(ip);
}
