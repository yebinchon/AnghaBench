
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
typedef int * xfs_failaddr_t ;
typedef unsigned long long uint64_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ sb_inodesize; int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_rtdev_targp; } ;
struct xfs_dinode {scalar_t__ di_magic; int di_version; int di_aformat; int di_cowextsize; int di_flags2; int di_extsize; scalar_t__ di_anextents; int di_format; scalar_t__ di_flags; int di_nblocks; int di_nextents; scalar_t__ di_mode; int di_size; int di_uuid; int di_ino; } ;







 int S_IFMT ;


 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DFORK_BOFF (struct xfs_dinode*) ;
 scalar_t__ XFS_DFORK_Q (struct xfs_dinode*) ;
 unsigned long long XFS_DIFLAG2_COWEXTSIZE ;
 unsigned long long XFS_DIFLAG2_DAX ;
 unsigned long long XFS_DIFLAG2_REFLINK ;
 int XFS_DIFLAG_REALTIME ;
 int XFS_DINODE_CRC_OFF ;
 int XFS_DINODE_FMT_DEV ;

 int XFS_DINODE_MAGIC ;
 scalar_t__ XFS_DIR3_FT_UNKNOWN ;
 int * __this_address ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int uuid_equal (int *,int *) ;
 int * xfs_dinode_verify_fork (struct xfs_dinode*,struct xfs_mount*,int ) ;
 int * xfs_dinode_verify_forkoff (struct xfs_dinode*,struct xfs_mount*) ;
 int * xfs_inode_validate_cowextsize (struct xfs_mount*,scalar_t__,int,int,unsigned long long) ;
 int * xfs_inode_validate_extsize (struct xfs_mount*,scalar_t__,int,int) ;
 scalar_t__ xfs_mode_to_ftype (int) ;
 int xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_sb_version_hasreflink (TYPE_1__*) ;
 int xfs_verify_cksum (char*,scalar_t__,int ) ;

xfs_failaddr_t
xfs_dinode_verify(
 struct xfs_mount *mp,
 xfs_ino_t ino,
 struct xfs_dinode *dip)
{
 xfs_failaddr_t fa;
 uint16_t mode;
 uint16_t flags;
 uint64_t flags2;
 uint64_t di_size;

 if (dip->di_magic != cpu_to_be16(XFS_DINODE_MAGIC))
  return __this_address;


 if (dip->di_version >= 3) {
  if (!xfs_sb_version_hascrc(&mp->m_sb))
   return __this_address;
  if (!xfs_verify_cksum((char *)dip, mp->m_sb.sb_inodesize,
          XFS_DINODE_CRC_OFF))
   return __this_address;
  if (be64_to_cpu(dip->di_ino) != ino)
   return __this_address;
  if (!uuid_equal(&dip->di_uuid, &mp->m_sb.sb_meta_uuid))
   return __this_address;
 }


 di_size = be64_to_cpu(dip->di_size);
 if (di_size & (1ULL << 63))
  return __this_address;

 mode = be16_to_cpu(dip->di_mode);
 if (mode && xfs_mode_to_ftype(mode) == XFS_DIR3_FT_UNKNOWN)
  return __this_address;


 if ((S_ISLNK(mode) || S_ISDIR(mode)) && di_size == 0)
  return __this_address;


 if (mode &&
     be32_to_cpu(dip->di_nextents) + be16_to_cpu(dip->di_anextents) >
   be64_to_cpu(dip->di_nblocks))
  return __this_address;

 if (mode && XFS_DFORK_BOFF(dip) > mp->m_sb.sb_inodesize)
  return __this_address;

 flags = be16_to_cpu(dip->di_flags);

 if (mode && (flags & XFS_DIFLAG_REALTIME) && !mp->m_rtdev_targp)
  return __this_address;


 fa = xfs_dinode_verify_forkoff(dip, mp);
 if (fa)
  return fa;


 switch (mode & S_IFMT) {
 case 132:
 case 134:
 case 135:
 case 129:
  if (dip->di_format != XFS_DINODE_FMT_DEV)
   return __this_address;
  break;
 case 130:
 case 131:
 case 133:
  fa = xfs_dinode_verify_fork(dip, mp, XFS_DATA_FORK);
  if (fa)
   return fa;
  break;
 case 0:

  break;
 default:
  return __this_address;
 }

 if (XFS_DFORK_Q(dip)) {
  fa = xfs_dinode_verify_fork(dip, mp, XFS_ATTR_FORK);
  if (fa)
   return fa;
 } else {






  switch (dip->di_aformat) {
  case 0:
  case 128:
   break;
  default:
   return __this_address;
  }
  if (dip->di_anextents)
   return __this_address;
 }


 fa = xfs_inode_validate_extsize(mp, be32_to_cpu(dip->di_extsize),
   mode, flags);
 if (fa)
  return fa;


 if (dip->di_version < 3)
  return ((void*)0);

 flags2 = be64_to_cpu(dip->di_flags2);


 if ((flags2 & (XFS_DIFLAG2_REFLINK | XFS_DIFLAG2_COWEXTSIZE)) &&
      !xfs_sb_version_hasreflink(&mp->m_sb))
  return __this_address;


 if ((flags2 & XFS_DIFLAG2_REFLINK) && (mode & S_IFMT) != 130)
  return __this_address;


 if ((flags2 & XFS_DIFLAG2_REFLINK) && (flags & XFS_DIFLAG_REALTIME))
  return __this_address;


 if ((flags2 & XFS_DIFLAG2_REFLINK) && (flags2 & XFS_DIFLAG2_DAX))
  return __this_address;


 fa = xfs_inode_validate_cowextsize(mp, be32_to_cpu(dip->di_cowextsize),
   mode, flags, flags2);
 if (fa)
  return fa;

 return ((void*)0);
}
