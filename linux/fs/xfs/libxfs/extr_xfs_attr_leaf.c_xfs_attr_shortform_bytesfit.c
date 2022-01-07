
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int m_flags; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_11__ {int di_format; int di_forkoff; int di_version; } ;
struct TYPE_10__ {int if_bytes; int if_broot; } ;
struct TYPE_13__ {TYPE_2__ i_d; TYPE_1__ i_df; TYPE_3__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef int xfs_dev_t ;


 int MINABTPTRS ;
 int MINDBTPTRS ;
 int XFS_BMAP_BROOT_SPACE (TYPE_3__*,int ) ;
 int XFS_BMDR_SPACE_CALC (int ) ;

 int XFS_DINODE_FMT_DEV ;

 int XFS_IFORK_ASIZE (TYPE_4__*) ;
 int XFS_LITINO (TYPE_3__*,int ) ;
 int XFS_MOUNT_ATTR2 ;
 int max (int,int) ;
 int roundup (int,int) ;
 int xfs_default_attroffset (TYPE_4__*) ;

int
xfs_attr_shortform_bytesfit(xfs_inode_t *dp, int bytes)
{
 int offset;
 int minforkoff;
 int maxforkoff;
 int dsize;
 xfs_mount_t *mp = dp->i_mount;


 offset = (XFS_LITINO(mp, dp->i_d.di_version) - bytes) >> 3;

 if (dp->i_d.di_format == XFS_DINODE_FMT_DEV) {
  minforkoff = roundup(sizeof(xfs_dev_t), 8) >> 3;
  return (offset >= minforkoff) ? minforkoff : 0;
 }
 if (bytes <= XFS_IFORK_ASIZE(dp))
  return dp->i_d.di_forkoff;






 if (!(mp->m_flags & XFS_MOUNT_ATTR2))
  return 0;

 dsize = dp->i_df.if_bytes;

 switch (dp->i_d.di_format) {
 case 128:







  if (!dp->i_d.di_forkoff && dp->i_df.if_bytes >
      xfs_default_attroffset(dp))
   dsize = XFS_BMDR_SPACE_CALC(MINDBTPTRS);
  break;
 case 129:






  if (dp->i_d.di_forkoff) {
   if (offset < dp->i_d.di_forkoff)
    return 0;
   return dp->i_d.di_forkoff;
  }
  dsize = XFS_BMAP_BROOT_SPACE(mp, dp->i_df.if_broot);
  break;
 }





 minforkoff = max(dsize, XFS_BMDR_SPACE_CALC(MINDBTPTRS));
 minforkoff = roundup(minforkoff, 8) >> 3;


 maxforkoff = XFS_LITINO(mp, dp->i_d.di_version) -
   XFS_BMDR_SPACE_CALC(MINABTPTRS);
 maxforkoff = maxforkoff >> 3;

 if (offset >= maxforkoff)
  return maxforkoff;
 if (offset >= minforkoff)
  return offset;
 return 0;
}
