
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {int net; struct xt_rateest_target_info* targinfo; } ;
struct xt_rateest_target_info {int est; } ;


 int xt_rateest_put (int ,int ) ;

__attribute__((used)) static void xt_rateest_tg_destroy(const struct xt_tgdtor_param *par)
{
 struct xt_rateest_target_info *info = par->targinfo;

 xt_rateest_put(par->net, info->est);
}
