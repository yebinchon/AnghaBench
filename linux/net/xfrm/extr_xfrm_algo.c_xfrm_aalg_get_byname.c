
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;


 int xfrm_aalg_list ;
 int xfrm_alg_name_match ;
 struct xfrm_algo_desc* xfrm_find_algo (int *,int ,char const*,int) ;

struct xfrm_algo_desc *xfrm_aalg_get_byname(const char *name, int probe)
{
 return xfrm_find_algo(&xfrm_aalg_list, xfrm_alg_name_match, name,
         probe);
}
