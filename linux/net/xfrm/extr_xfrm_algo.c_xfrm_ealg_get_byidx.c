
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;


 unsigned int ealg_entries () ;
 struct xfrm_algo_desc* ealg_list ;

struct xfrm_algo_desc *xfrm_ealg_get_byidx(unsigned int idx)
{
 if (idx >= ealg_entries())
  return ((void*)0);

 return &ealg_list[idx];
}
