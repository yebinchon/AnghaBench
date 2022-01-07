
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int O2NM_API_VERSION ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
       char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", O2NM_API_VERSION);
}
