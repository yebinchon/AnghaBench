
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int nr_hugepages_show_common (struct kobject*,struct kobj_attribute*,char*) ;

__attribute__((used)) static ssize_t nr_hugepages_show(struct kobject *kobj,
           struct kobj_attribute *attr, char *buf)
{
 return nr_hugepages_show_common(kobj, attr, buf);
}
