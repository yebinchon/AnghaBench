
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_failaddr_t ;
struct xfs_mount {int dummy; } ;


 int xfs_alert (struct xfs_mount*,char*) ;
 int xfs_error_level ;
 int xfs_error_report (char const*,int,struct xfs_mount*,char const*,int,int ) ;
 int xfs_hex_dump (void*,size_t) ;

void
xfs_corruption_error(
 const char *tag,
 int level,
 struct xfs_mount *mp,
 void *buf,
 size_t bufsize,
 const char *filename,
 int linenum,
 xfs_failaddr_t failaddr)
{
 if (level <= xfs_error_level)
  xfs_hex_dump(buf, bufsize);
 xfs_error_report(tag, level, mp, filename, linenum, failaddr);
 xfs_alert(mp, "Corruption detected. Unmount and run xfs_repair");
}
