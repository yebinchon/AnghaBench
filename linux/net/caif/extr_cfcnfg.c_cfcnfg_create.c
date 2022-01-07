
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfctrl_rsp {int reject_rsp; int linksetup_rsp; void* radioset_rsp; void* restart_rsp; void* wake_rsp; void* sleep_rsp; int linkdestroy_rsp; void* linkerror_ind; int enum_rsp; } ;
struct cfcnfg {struct cfcnfg* ctrl; struct cfcnfg* mux; int lock; int phys; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int cfcnfg_linkdestroy_rsp ;
 int cfcnfg_linkup_rsp ;
 int cfcnfg_reject_rsp ;
 struct cfcnfg* cfctrl_create () ;
 int cfctrl_enum_resp ;
 struct cfctrl_rsp* cfctrl_get_respfuncs (struct cfcnfg*) ;
 void* cfctrl_resp_func ;
 struct cfcnfg* cfmuxl_create () ;
 int cfmuxl_set_uplayer (struct cfcnfg*,struct cfcnfg*,int ) ;
 int kfree (struct cfcnfg*) ;
 struct cfcnfg* kzalloc (int,int ) ;
 int layer_set_dn (struct cfcnfg*,struct cfcnfg*) ;
 int layer_set_up (struct cfcnfg*,struct cfcnfg*) ;
 int might_sleep () ;
 int mutex_init (int *) ;
 int synchronize_rcu () ;

struct cfcnfg *cfcnfg_create(void)
{
 struct cfcnfg *this;
 struct cfctrl_rsp *resp;

 might_sleep();


 this = kzalloc(sizeof(struct cfcnfg), GFP_ATOMIC);
 if (!this)
  return ((void*)0);
 this->mux = cfmuxl_create();
 if (!this->mux)
  goto out_of_mem;
 this->ctrl = cfctrl_create();
 if (!this->ctrl)
  goto out_of_mem;

 resp = cfctrl_get_respfuncs(this->ctrl);
 resp->enum_rsp = cfctrl_enum_resp;
 resp->linkerror_ind = cfctrl_resp_func;
 resp->linkdestroy_rsp = cfcnfg_linkdestroy_rsp;
 resp->sleep_rsp = cfctrl_resp_func;
 resp->wake_rsp = cfctrl_resp_func;
 resp->restart_rsp = cfctrl_resp_func;
 resp->radioset_rsp = cfctrl_resp_func;
 resp->linksetup_rsp = cfcnfg_linkup_rsp;
 resp->reject_rsp = cfcnfg_reject_rsp;
 INIT_LIST_HEAD(&this->phys);

 cfmuxl_set_uplayer(this->mux, this->ctrl, 0);
 layer_set_dn(this->ctrl, this->mux);
 layer_set_up(this->ctrl, this);
 mutex_init(&this->lock);

 return this;
out_of_mem:
 synchronize_rcu();

 kfree(this->mux);
 kfree(this->ctrl);
 kfree(this);
 return ((void*)0);
}
