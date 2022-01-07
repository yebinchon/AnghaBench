
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_fail_unmount; } ;
struct kobject {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct xfs_mount* err_to_mp (struct kobject*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
fail_at_unmount_show(
 struct kobject *kobject,
 char *buf)
{
 struct xfs_mount *mp = err_to_mp(kobject);

 return snprintf(buf, PAGE_SIZE, "%d\n", mp->m_fail_unmount);
}
