
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfcnfg {int ctrl; struct cfcnfg* mux; } ;


 int cfctrl_remove (int ) ;
 int kfree (struct cfcnfg*) ;
 int might_sleep () ;
 int synchronize_rcu () ;

void cfcnfg_remove(struct cfcnfg *cfg)
{
 might_sleep();
 if (cfg) {
  synchronize_rcu();

  kfree(cfg->mux);
  cfctrl_remove(cfg->ctrl);
  kfree(cfg);
 }
}
