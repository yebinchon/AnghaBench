
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_error_cfg {int max_retries; } ;
struct kobject {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int XFS_ERR_RETRY_FOREVER ;
 int kstrtoint (char const*,int ,int*) ;
 struct xfs_error_cfg* to_error_cfg (struct kobject*) ;

__attribute__((used)) static ssize_t
max_retries_store(
 struct kobject *kobject,
 const char *buf,
 size_t count)
{
 struct xfs_error_cfg *cfg = to_error_cfg(kobject);
 int ret;
 int val;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 if (val < -1)
  return -EINVAL;

 if (val == -1)
  cfg->max_retries = XFS_ERR_RETRY_FOREVER;
 else
  cfg->max_retries = val;
 return count;
}
