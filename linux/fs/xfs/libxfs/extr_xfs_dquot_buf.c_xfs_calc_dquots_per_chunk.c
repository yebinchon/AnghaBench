
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dqblk_t ;


 int ASSERT (int) ;
 int BBTOB (unsigned int) ;

int
xfs_calc_dquots_per_chunk(
 unsigned int nbblks)
{
 ASSERT(nbblks > 0);
 return BBTOB(nbblks) / sizeof(xfs_dqblk_t);
}
