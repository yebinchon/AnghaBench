
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6hdr {int daddr; } ;
struct ila_params {int dummy; } ;
typedef int __wsum ;


 int get_csum_diff_iaddr (int ,struct ila_params*) ;
 int ila_a2i (int *) ;

__attribute__((used)) static __wsum get_csum_diff(struct ipv6hdr *ip6h, struct ila_params *p)
{
 return get_csum_diff_iaddr(ila_a2i(&ip6h->daddr), p);
}
