
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int xfs_inode_has_sickness (struct xfs_inode*,unsigned int) ;

__attribute__((used)) static inline bool
xfs_inode_is_healthy(struct xfs_inode *ip)
{
 return !xfs_inode_has_sickness(ip, -1U);
}
