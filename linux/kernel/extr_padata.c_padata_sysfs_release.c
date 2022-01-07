
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int dummy; } ;
struct kobject {int dummy; } ;


 int __padata_free (struct padata_instance*) ;
 struct padata_instance* kobj2pinst (struct kobject*) ;

__attribute__((used)) static void padata_sysfs_release(struct kobject *kobj)
{
 struct padata_instance *pinst = kobj2pinst(kobj);
 __padata_free(pinst);
}
