
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_error_cfg {scalar_t__ retry_timeout; } ;
struct kobject {int dummy; } ;
typedef int ssize_t ;


 int MSEC_PER_SEC ;
 int PAGE_SIZE ;
 scalar_t__ XFS_ERR_RETRY_FOREVER ;
 int jiffies_to_msecs (scalar_t__) ;
 int snprintf (char*,int ,char*,int) ;
 struct xfs_error_cfg* to_error_cfg (struct kobject*) ;

__attribute__((used)) static ssize_t
retry_timeout_seconds_show(
 struct kobject *kobject,
 char *buf)
{
 int timeout;
 struct xfs_error_cfg *cfg = to_error_cfg(kobject);

 if (cfg->retry_timeout == XFS_ERR_RETRY_FOREVER)
  timeout = -1;
 else
  timeout = jiffies_to_msecs(cfg->retry_timeout) / MSEC_PER_SEC;

 return snprintf(buf, PAGE_SIZE, "%d\n", timeout);
}
