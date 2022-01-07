
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int targinfo; } ;


 int xt_ct_tg_destroy (struct xt_tgdtor_param const*,int ) ;

__attribute__((used)) static void xt_ct_tg_destroy_v1(const struct xt_tgdtor_param *par)
{
 xt_ct_tg_destroy(par, par->targinfo);
}
