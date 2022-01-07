
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dquot_t ;
struct xfs_inode {int * i_pdquot; int * i_gdquot; int * i_udquot; } ;


 int XFS_DQ_ALLTYPES ;




__attribute__((used)) static inline xfs_dquot_t *xfs_inode_dquot(struct xfs_inode *ip, int type)
{
 switch (type & XFS_DQ_ALLTYPES) {
 case 128:
  return ip->i_udquot;
 case 130:
  return ip->i_gdquot;
 case 129:
  return ip->i_pdquot;
 default:
  return ((void*)0);
 }
}
