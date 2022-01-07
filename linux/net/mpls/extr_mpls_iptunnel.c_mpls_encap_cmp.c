
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpls_iptunnel_encap {int labels; scalar_t__ ttl_propagate; scalar_t__ default_ttl; scalar_t__* label; } ;
struct lwtunnel_state {int dummy; } ;


 struct mpls_iptunnel_encap* mpls_lwtunnel_encap (struct lwtunnel_state*) ;

__attribute__((used)) static int mpls_encap_cmp(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
 struct mpls_iptunnel_encap *a_hdr = mpls_lwtunnel_encap(a);
 struct mpls_iptunnel_encap *b_hdr = mpls_lwtunnel_encap(b);
 int l;

 if (a_hdr->labels != b_hdr->labels ||
     a_hdr->ttl_propagate != b_hdr->ttl_propagate ||
     a_hdr->default_ttl != b_hdr->default_ttl)
  return 1;

 for (l = 0; l < a_hdr->labels; l++)
  if (a_hdr->label[l] != b_hdr->label[l])
   return 1;
 return 0;
}
