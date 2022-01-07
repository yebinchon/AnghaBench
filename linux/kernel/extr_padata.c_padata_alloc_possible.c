
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int dummy; } ;


 int cpu_possible_mask ;
 struct padata_instance* padata_alloc (char const*,int ,int ) ;

struct padata_instance *padata_alloc_possible(const char *name)
{
 return padata_alloc(name, cpu_possible_mask, cpu_possible_mask);
}
