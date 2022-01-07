
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int kfree (struct kobject*) ;

__attribute__((used)) static void widget_release(struct kobject *kobj)
{
 kfree(kobj);
}
