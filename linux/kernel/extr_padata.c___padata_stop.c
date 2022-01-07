
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int flags; int pd; } ;


 int PADATA_INIT ;
 int get_online_cpus () ;
 int padata_flush_queues (int ) ;
 int put_online_cpus () ;
 int synchronize_rcu () ;

__attribute__((used)) static void __padata_stop(struct padata_instance *pinst)
{
 if (!(pinst->flags & PADATA_INIT))
  return;

 pinst->flags &= ~PADATA_INIT;

 synchronize_rcu();

 get_online_cpus();
 padata_flush_queues(pinst->pd);
 put_online_cpus();
}
