
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;


 int kmem_cache_free (int ,struct xfrm_state*) ;
 int xfrm_state_cache ;

void xfrm_state_free(struct xfrm_state *x)
{
 kmem_cache_free(xfrm_state_cache, x);
}
