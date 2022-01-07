
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int xfs_inode_measure_sickness (struct xfs_inode*,unsigned int*,unsigned int*) ;

__attribute__((used)) static inline bool
xfs_inode_has_sickness(struct xfs_inode *ip, unsigned int mask)
{
 unsigned int sick, checked;

 xfs_inode_measure_sickness(ip, &sick, &checked);
 return sick & mask;
}
