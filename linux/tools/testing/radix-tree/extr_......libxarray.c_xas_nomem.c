
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xa_state {scalar_t__ xa_node; TYPE_2__* xa_alloc; TYPE_1__* xa; } ;
typedef int gfp_t ;
struct TYPE_5__ {int private_list; } ;
struct TYPE_4__ {int xa_flags; } ;


 int ENOMEM ;
 scalar_t__ XAS_RESTART ;
 scalar_t__ XA_ERROR (int ) ;
 int XA_FLAGS_ACCOUNT ;
 int XA_NODE_BUG_ON (TYPE_2__*,int) ;
 int __GFP_ACCOUNT ;
 TYPE_2__* kmem_cache_alloc (int ,int ) ;
 int list_empty (int *) ;
 int radix_tree_node_cachep ;
 int xas_destroy (struct xa_state*) ;

bool xas_nomem(struct xa_state *xas, gfp_t gfp)
{
 if (xas->xa_node != XA_ERROR(-ENOMEM)) {
  xas_destroy(xas);
  return 0;
 }
 if (xas->xa->xa_flags & XA_FLAGS_ACCOUNT)
  gfp |= __GFP_ACCOUNT;
 xas->xa_alloc = kmem_cache_alloc(radix_tree_node_cachep, gfp);
 if (!xas->xa_alloc)
  return 0;
 XA_NODE_BUG_ON(xas->xa_alloc, !list_empty(&xas->xa_alloc->private_list));
 xas->xa_node = XAS_RESTART;
 return 1;
}
