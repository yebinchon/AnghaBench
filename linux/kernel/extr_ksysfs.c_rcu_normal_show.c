
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int READ_ONCE (int ) ;
 int rcu_normal ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t rcu_normal_show(struct kobject *kobj,
          struct kobj_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", READ_ONCE(rcu_normal));
}
