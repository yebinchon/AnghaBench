
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_mtdtor_param {TYPE_3__* match; int family; int matchinfo; struct net* net; } ;
struct TYPE_4__ {TYPE_3__* match; } ;
struct TYPE_5__ {TYPE_1__ kernel; } ;
struct xt_entry_match {int data; TYPE_2__ u; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int me; int (* destroy ) (struct xt_mtdtor_param*) ;} ;


 int NFPROTO_IPV4 ;
 int module_put (int ) ;
 int stub1 (struct xt_mtdtor_param*) ;

__attribute__((used)) static void cleanup_match(struct xt_entry_match *m, struct net *net)
{
 struct xt_mtdtor_param par;

 par.net = net;
 par.match = m->u.kernel.match;
 par.matchinfo = m->data;
 par.family = NFPROTO_IPV4;
 if (par.match->destroy != ((void*)0))
  par.match->destroy(&par);
 module_put(par.match->me);
}
