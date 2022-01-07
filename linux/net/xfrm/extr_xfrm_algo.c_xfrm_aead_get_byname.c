
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;
struct xfrm_aead_name {char const* name; int icvbits; } ;


 int xfrm_aead_list ;
 int xfrm_aead_name_match ;
 struct xfrm_algo_desc* xfrm_find_algo (int *,int ,struct xfrm_aead_name*,int) ;

struct xfrm_algo_desc *xfrm_aead_get_byname(const char *name, int icv_len, int probe)
{
 struct xfrm_aead_name data = {
  .name = name,
  .icvbits = icv_len,
 };

 return xfrm_find_algo(&xfrm_aead_list, xfrm_aead_name_match, &data,
         probe);
}
