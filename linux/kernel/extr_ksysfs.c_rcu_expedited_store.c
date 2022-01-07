
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoint (char const*,int ,int *) ;
 int rcu_expedited ;

__attribute__((used)) static ssize_t rcu_expedited_store(struct kobject *kobj,
       struct kobj_attribute *attr,
       const char *buf, size_t count)
{
 if (kstrtoint(buf, 0, &rcu_expedited))
  return -EINVAL;

 return count;
}
