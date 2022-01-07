
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int flags; } ;


 int PADATA_INIT ;

__attribute__((used)) static void __padata_start(struct padata_instance *pinst)
{
 pinst->flags |= PADATA_INIT;
}
