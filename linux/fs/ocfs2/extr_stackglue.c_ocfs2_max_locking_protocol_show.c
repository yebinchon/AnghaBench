
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int pv_major; int pv_minor; } ;


 int PAGE_SIZE ;
 TYPE_1__ locking_max_version ;
 int ocfs2_stack_lock ;
 int snprintf (char*,int ,char*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ocfs2_max_locking_protocol_show(struct kobject *kobj,
            struct kobj_attribute *attr,
            char *buf)
{
 ssize_t ret = 0;

 spin_lock(&ocfs2_stack_lock);
 if (locking_max_version.pv_major)
  ret = snprintf(buf, PAGE_SIZE, "%u.%u\n",
          locking_max_version.pv_major,
          locking_max_version.pv_minor);
 spin_unlock(&ocfs2_stack_lock);

 return ret;
}
