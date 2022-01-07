
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_rateest_match_info {scalar_t__ est2; scalar_t__ est1; } ;
struct xt_mtdtor_param {int net; struct xt_rateest_match_info* matchinfo; } ;


 int xt_rateest_put (int ,scalar_t__) ;

__attribute__((used)) static void xt_rateest_mt_destroy(const struct xt_mtdtor_param *par)
{
 struct xt_rateest_match_info *info = par->matchinfo;

 xt_rateest_put(par->net, info->est1);
 if (info->est2)
  xt_rateest_put(par->net, info->est2);
}
