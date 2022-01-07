
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ino ;
typedef int fileid ;
typedef int compat_ulong_t ;


 scalar_t__ enable_ino64 ;

u64 nfs_compat_user_ino64(u64 fileid)
{



 unsigned long ino;


 if (enable_ino64)
  return fileid;
 ino = fileid;
 if (sizeof(ino) < sizeof(fileid))
  ino ^= fileid >> (sizeof(fileid)-sizeof(ino)) * 8;
 return ino;
}
