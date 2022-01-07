
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 unsigned long EXT4_APPEND_FL ;
 unsigned long EXT4_IMMUTABLE_FL ;
 unsigned long EXT4_NOATIME_FL ;
 unsigned long EXT4_NODUMP_FL ;
 unsigned long EXT4_PROJINHERIT_FL ;
 unsigned long EXT4_SYNC_FL ;
 int FS_XFLAG_APPEND ;
 int FS_XFLAG_IMMUTABLE ;
 int FS_XFLAG_NOATIME ;
 int FS_XFLAG_NODUMP ;
 int FS_XFLAG_PROJINHERIT ;
 int FS_XFLAG_SYNC ;

__attribute__((used)) static inline __u32 ext4_iflags_to_xflags(unsigned long iflags)
{
 __u32 xflags = 0;

 if (iflags & EXT4_SYNC_FL)
  xflags |= FS_XFLAG_SYNC;
 if (iflags & EXT4_IMMUTABLE_FL)
  xflags |= FS_XFLAG_IMMUTABLE;
 if (iflags & EXT4_APPEND_FL)
  xflags |= FS_XFLAG_APPEND;
 if (iflags & EXT4_NODUMP_FL)
  xflags |= FS_XFLAG_NODUMP;
 if (iflags & EXT4_NOATIME_FL)
  xflags |= FS_XFLAG_NOATIME;
 if (iflags & EXT4_PROJINHERIT_FL)
  xflags |= FS_XFLAG_PROJINHERIT;
 return xflags;
}
