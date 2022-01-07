
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FS_XFLAG_APPEND ;
 unsigned int FS_XFLAG_IMMUTABLE ;
 unsigned int FS_XFLAG_NOATIME ;
 unsigned int FS_XFLAG_SYNC ;
 unsigned int S_APPEND ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;

__attribute__((used)) static unsigned int ovl_fsxflags_to_iflags(unsigned int xflags)
{
 unsigned int iflags = 0;

 if (xflags & FS_XFLAG_SYNC)
  iflags |= S_SYNC;
 if (xflags & FS_XFLAG_APPEND)
  iflags |= S_APPEND;
 if (xflags & FS_XFLAG_IMMUTABLE)
  iflags |= S_IMMUTABLE;
 if (xflags & FS_XFLAG_NOATIME)
  iflags |= S_NOATIME;

 return iflags;
}
