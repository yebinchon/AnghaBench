
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {scalar_t__ family; } ;


 int EINVAL ;
 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 int pr_info_ratelimited (char*,scalar_t__) ;

__attribute__((used)) static int ipvs_mt_check(const struct xt_mtchk_param *par)
{
 if (par->family != NFPROTO_IPV4



  ) {
  pr_info_ratelimited("protocol family %u not supported\n",
        par->family);
  return -EINVAL;
 }

 return 0;
}
