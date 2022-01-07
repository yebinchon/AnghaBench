
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgdtor_param {TYPE_3__* target; struct net* net; int family; int targinfo; } ;
struct TYPE_4__ {TYPE_3__* target; } ;
struct TYPE_5__ {TYPE_1__ kernel; } ;
struct xt_entry_target {int data; TYPE_2__ u; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int me; int (* destroy ) (struct xt_tgdtor_param*) ;} ;


 int NFPROTO_IPV4 ;
 int module_put (int ) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static void ipt_destroy_target(struct xt_entry_target *t, struct net *net)
{
 struct xt_tgdtor_param par = {
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .family = NFPROTO_IPV4,
  .net = net,
 };
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);
 module_put(par.target->me);
}
