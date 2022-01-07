
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_mtdtor_param {int family; int matchinfo; TYPE_1__* match; int net; } ;
struct tcf_ematch {int net; scalar_t__ data; } ;
struct em_ipt_match {TYPE_1__* match; int match_data; } ;
struct TYPE_2__ {int me; int (* destroy ) (struct xt_mtdtor_param*) ;int family; } ;


 int kfree (void*) ;
 int module_put (int ) ;
 int stub1 (struct xt_mtdtor_param*) ;

__attribute__((used)) static void em_ipt_destroy(struct tcf_ematch *em)
{
 struct em_ipt_match *im = (void *)em->data;

 if (!im)
  return;

 if (im->match->destroy) {
  struct xt_mtdtor_param par = {
   .net = em->net,
   .match = im->match,
   .matchinfo = im->match_data,
   .family = im->match->family
  };
  im->match->destroy(&par);
 }
 module_put(im->match->me);
 kfree((void *)im);
}
