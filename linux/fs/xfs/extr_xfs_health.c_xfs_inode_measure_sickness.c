
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {unsigned int i_sick; unsigned int i_checked; int i_flags_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
xfs_inode_measure_sickness(
 struct xfs_inode *ip,
 unsigned int *sick,
 unsigned int *checked)
{
 spin_lock(&ip->i_flags_lock);
 *sick = ip->i_sick;
 *checked = ip->i_checked;
 spin_unlock(&ip->i_flags_lock);
}
