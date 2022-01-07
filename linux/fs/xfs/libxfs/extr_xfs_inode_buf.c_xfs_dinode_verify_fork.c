
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xfs_failaddr_t ;
typedef int uint32_t ;
struct xfs_mount {int dummy; } ;
struct xfs_dinode {int di_size; int di_mode; } ;


 int MAXAEXTNUM ;
 int MAXEXTNUM ;
 int S_ISREG (int ) ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 int XFS_DFORK_FORMAT (struct xfs_dinode*,int) ;
 int XFS_DFORK_MAXEXT (struct xfs_dinode*,struct xfs_mount*,int) ;
 int XFS_DFORK_NEXTENTS (struct xfs_dinode*,int) ;
 int XFS_DFORK_SIZE (struct xfs_dinode*,struct xfs_mount*,int) ;



 int * __this_address ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static xfs_failaddr_t
xfs_dinode_verify_fork(
 struct xfs_dinode *dip,
 struct xfs_mount *mp,
 int whichfork)
{
 uint32_t di_nextents = XFS_DFORK_NEXTENTS(dip, whichfork);

 switch (XFS_DFORK_FORMAT(dip, whichfork)) {
 case 128:



  if (whichfork == XFS_DATA_FORK) {
   if (S_ISREG(be16_to_cpu(dip->di_mode)))
    return __this_address;
   if (be64_to_cpu(dip->di_size) >
     XFS_DFORK_SIZE(dip, mp, whichfork))
    return __this_address;
  }
  if (di_nextents)
   return __this_address;
  break;
 case 129:
  if (di_nextents > XFS_DFORK_MAXEXT(dip, mp, whichfork))
   return __this_address;
  break;
 case 130:
  if (whichfork == XFS_ATTR_FORK) {
   if (di_nextents > MAXAEXTNUM)
    return __this_address;
  } else if (di_nextents > MAXEXTNUM) {
   return __this_address;
  }
  break;
 default:
  return __this_address;
 }
 return ((void*)0);
}
