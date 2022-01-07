
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int kobj; } ;


 int kobject_put (int *) ;

void padata_free(struct padata_instance *pinst)
{
 kobject_put(&pinst->kobj);
}
