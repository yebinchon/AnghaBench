
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xfs_failaddr_t ;
typedef int xfs_dev_t ;
struct xfs_mount {int dummy; } ;
struct xfs_dinode {int di_format; int di_forkoff; int di_version; } ;


 int XFS_DFORK_Q (struct xfs_dinode*) ;




 int XFS_LITINO (struct xfs_mount*,int ) ;
 int * __this_address ;
 int roundup (int,int) ;

__attribute__((used)) static xfs_failaddr_t
xfs_dinode_verify_forkoff(
 struct xfs_dinode *dip,
 struct xfs_mount *mp)
{
 if (!XFS_DFORK_Q(dip))
  return ((void*)0);

 switch (dip->di_format) {
 case 130:
  if (dip->di_forkoff != (roundup(sizeof(xfs_dev_t), 8) >> 3))
   return __this_address;
  break;
 case 128:
 case 129:
 case 131:
  if (dip->di_forkoff >= (XFS_LITINO(mp, dip->di_version) >> 3))
   return __this_address;
  break;
 default:
  return __this_address;
 }
 return ((void*)0);
}
