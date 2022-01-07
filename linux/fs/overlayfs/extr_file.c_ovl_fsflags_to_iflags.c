
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FS_APPEND_FL ;
 unsigned int FS_IMMUTABLE_FL ;
 unsigned int FS_NOATIME_FL ;
 unsigned int FS_SYNC_FL ;
 unsigned int S_APPEND ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;

__attribute__((used)) static unsigned int ovl_fsflags_to_iflags(unsigned int flags)
{
 unsigned int iflags = 0;

 if (flags & FS_SYNC_FL)
  iflags |= S_SYNC;
 if (flags & FS_APPEND_FL)
  iflags |= S_APPEND;
 if (flags & FS_IMMUTABLE_FL)
  iflags |= S_IMMUTABLE;
 if (flags & FS_NOATIME_FL)
  iflags |= S_NOATIME;

 return iflags;
}
