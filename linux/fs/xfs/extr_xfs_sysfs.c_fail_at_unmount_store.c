
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_fail_unmount; } ;
struct kobject {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct xfs_mount* err_to_mp (struct kobject*) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t
fail_at_unmount_store(
 struct kobject *kobject,
 const char *buf,
 size_t count)
{
 struct xfs_mount *mp = err_to_mp(kobject);
 int ret;
 int val;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 if (val < 0 || val > 1)
  return -EINVAL;

 mp->m_fail_unmount = val;
 return count;
}
