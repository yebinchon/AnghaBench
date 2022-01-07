
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_1__* target; int family; int targinfo; } ;
struct TYPE_5__ {TYPE_1__* target; } ;
struct TYPE_6__ {TYPE_2__ kernel; } ;
struct xt_entry_target {int data; TYPE_3__ u; } ;
struct arpt_entry {int counters; } ;
struct TYPE_4__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int NFPROTO_ARP ;
 struct xt_entry_target* arpt_get_target (struct arpt_entry*) ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;
 int xt_percpu_counter_free (int *) ;

__attribute__((used)) static inline void cleanup_entry(struct arpt_entry *e)
{
 struct xt_tgdtor_param par;
 struct xt_entry_target *t;

 t = arpt_get_target(e);
 par.target = t->u.kernel.target;
 par.targinfo = t->data;
 par.family = NFPROTO_ARP;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
 xt_percpu_counter_free(&e->counters);
}
