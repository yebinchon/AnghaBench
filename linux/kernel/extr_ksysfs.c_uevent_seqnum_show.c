
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;
 scalar_t__ uevent_seqnum ;

__attribute__((used)) static ssize_t uevent_seqnum_show(struct kobject *kobj,
      struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "%llu\n", (unsigned long long)uevent_seqnum);
}
