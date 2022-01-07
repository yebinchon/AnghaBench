
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int sb_rextsize; int sb_blocklog; int sb_blocksize; int sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int MAXEXTLEN ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISREG (int) ;
 int XFS_DIFLAG_EXTSIZE ;
 int XFS_DIFLAG_EXTSZINHERIT ;
 int XFS_DIFLAG_REALTIME ;
 int XFS_FSB_TO_B (struct xfs_mount*,int) ;
 int * __this_address ;

xfs_failaddr_t
xfs_inode_validate_extsize(
 struct xfs_mount *mp,
 uint32_t extsize,
 uint16_t mode,
 uint16_t flags)
{
 bool rt_flag;
 bool hint_flag;
 bool inherit_flag;
 uint32_t extsize_bytes;
 uint32_t blocksize_bytes;

 rt_flag = (flags & XFS_DIFLAG_REALTIME);
 hint_flag = (flags & XFS_DIFLAG_EXTSIZE);
 inherit_flag = (flags & XFS_DIFLAG_EXTSZINHERIT);
 extsize_bytes = XFS_FSB_TO_B(mp, extsize);

 if (rt_flag)
  blocksize_bytes = mp->m_sb.sb_rextsize << mp->m_sb.sb_blocklog;
 else
  blocksize_bytes = mp->m_sb.sb_blocksize;

 if ((hint_flag || inherit_flag) && !(S_ISDIR(mode) || S_ISREG(mode)))
  return __this_address;

 if (hint_flag && !S_ISREG(mode))
  return __this_address;

 if (inherit_flag && !S_ISDIR(mode))
  return __this_address;

 if ((hint_flag || inherit_flag) && extsize == 0)
  return __this_address;


 if (mode && !(hint_flag || inherit_flag) && extsize != 0)
  return __this_address;

 if (extsize_bytes % blocksize_bytes)
  return __this_address;

 if (extsize > MAXEXTLEN)
  return __this_address;

 if (!rt_flag && extsize > mp->m_sb.sb_agblocks / 2)
  return __this_address;

 return ((void*)0);
}
