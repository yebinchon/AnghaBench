
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_pol_inexact_node {int prefixlen; int addr; } ;



__attribute__((used)) static void xfrm_pol_inexact_node_init(struct xfrm_pol_inexact_node *node,
           const xfrm_address_t *addr, u8 prefixlen)
{
 node->addr = *addr;
 node->prefixlen = prefixlen;
}
