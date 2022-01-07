
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtdtor_param {int family; int net; struct xt_connlimit_info* matchinfo; } ;
struct xt_connlimit_info {int data; } ;


 int nf_conncount_destroy (int ,int ,int ) ;

__attribute__((used)) static void connlimit_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_connlimit_info *info = par->matchinfo;

 nf_conncount_destroy(par->net, par->family, info->data);
}
