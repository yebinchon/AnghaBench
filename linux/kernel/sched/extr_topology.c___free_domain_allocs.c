
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_data {int sd; TYPE_1__* rd; } ;
struct cpumask {int dummy; } ;
typedef enum s_alloc { ____Placeholder_s_alloc } s_alloc ;
struct TYPE_2__ {int rcu; int refcount; } ;


 int __sdt_free (struct cpumask const*) ;
 int atomic_read (int *) ;
 int free_percpu (int ) ;
 int free_rootdomain (int *) ;





__attribute__((used)) static void __free_domain_allocs(struct s_data *d, enum s_alloc what,
     const struct cpumask *cpu_map)
{
 switch (what) {
 case 130:
  if (!atomic_read(&d->rd->refcount))
   free_rootdomain(&d->rd->rcu);

 case 129:
  free_percpu(d->sd);

 case 128:
  __sdt_free(cpu_map);

 case 131:
  break;
 }
}
