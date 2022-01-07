
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_failaddr_t ;
struct xfs_mount {int dummy; } ;


 int XFS_PTAG_ERROR_REPORT ;
 int xfs_alert_tag (struct xfs_mount*,int ,char*,char const*,int,char const*,int ) ;
 int xfs_error_level ;
 int xfs_stack_trace () ;

void
xfs_error_report(
 const char *tag,
 int level,
 struct xfs_mount *mp,
 const char *filename,
 int linenum,
 xfs_failaddr_t failaddr)
{
 if (level <= xfs_error_level) {
  xfs_alert_tag(mp, XFS_PTAG_ERROR_REPORT,
  "Internal error %s at line %d of file %s.  Caller %pS",
       tag, linenum, filename, failaddr);

  xfs_stack_trace();
 }
}
