
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_pol_inexact_node {int dummy; } ;


 int GFP_ATOMIC ;
 struct xfrm_pol_inexact_node* kzalloc (int,int ) ;
 int xfrm_pol_inexact_node_init (struct xfrm_pol_inexact_node*,int const*,int ) ;

__attribute__((used)) static struct xfrm_pol_inexact_node *
xfrm_pol_inexact_node_alloc(const xfrm_address_t *addr, u8 prefixlen)
{
 struct xfrm_pol_inexact_node *node;

 node = kzalloc(sizeof(*node), GFP_ATOMIC);
 if (node)
  xfrm_pol_inexact_node_init(node, addr, prefixlen);

 return node;
}
