
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int xfs_alert_ratelimited (struct xfs_mount*,char*) ;

void
xrep_failure(
 struct xfs_mount *mp)
{
 xfs_alert_ratelimited(mp,
"Corruption not fixed during online repair.  Unmount and run xfs_repair.");
}
