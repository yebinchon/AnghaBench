
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MNT_NOATIME ;
 int MNT_NODEV ;
 int MNT_NODIRATIME ;
 int MNT_NOEXEC ;
 int MNT_NOSUID ;
 int MNT_READONLY ;
 int MNT_RELATIME ;
 int ST_NOATIME ;
 int ST_NODEV ;
 int ST_NODIRATIME ;
 int ST_NOEXEC ;
 int ST_NOSUID ;
 int ST_RDONLY ;
 int ST_RELATIME ;

__attribute__((used)) static int flags_by_mnt(int mnt_flags)
{
 int flags = 0;

 if (mnt_flags & MNT_READONLY)
  flags |= ST_RDONLY;
 if (mnt_flags & MNT_NOSUID)
  flags |= ST_NOSUID;
 if (mnt_flags & MNT_NODEV)
  flags |= ST_NODEV;
 if (mnt_flags & MNT_NOEXEC)
  flags |= ST_NOEXEC;
 if (mnt_flags & MNT_NOATIME)
  flags |= ST_NOATIME;
 if (mnt_flags & MNT_NODIRATIME)
  flags |= ST_NODIRATIME;
 if (mnt_flags & MNT_RELATIME)
  flags |= ST_RELATIME;
 return flags;
}
