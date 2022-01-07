
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcf_ctinfo_params {int dscpmask; int dscpmaskshift; } ;
struct tcf_ctinfo {int stats_dscp_error; int stats_dscp_set; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int mark; } ;


 int INET_ECN_MASK ;


 int ip_hdr (struct sk_buff*) ;
 int ipv4_change_dsfield (int ,int,int) ;
 int ipv4_get_dsfield (int ) ;
 int ipv6_change_dsfield (int ,int,int) ;
 int ipv6_get_dsfield (int ) ;
 int ipv6_hdr (struct sk_buff*) ;
 int likely (int) ;
 int skb_try_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static void tcf_ctinfo_dscp_set(struct nf_conn *ct, struct tcf_ctinfo *ca,
    struct tcf_ctinfo_params *cp,
    struct sk_buff *skb, int wlen, int proto)
{
 u8 dscp, newdscp;

 newdscp = (((ct->mark & cp->dscpmask) >> cp->dscpmaskshift) << 2) &
       ~INET_ECN_MASK;

 switch (proto) {
 case 129:
  dscp = ipv4_get_dsfield(ip_hdr(skb)) & ~INET_ECN_MASK;
  if (dscp != newdscp) {
   if (likely(!skb_try_make_writable(skb, wlen))) {
    ipv4_change_dsfield(ip_hdr(skb),
          INET_ECN_MASK,
          newdscp);
    ca->stats_dscp_set++;
   } else {
    ca->stats_dscp_error++;
   }
  }
  break;
 case 128:
  dscp = ipv6_get_dsfield(ipv6_hdr(skb)) & ~INET_ECN_MASK;
  if (dscp != newdscp) {
   if (likely(!skb_try_make_writable(skb, wlen))) {
    ipv6_change_dsfield(ipv6_hdr(skb),
          INET_ECN_MASK,
          newdscp);
    ca->stats_dscp_set++;
   } else {
    ca->stats_dscp_error++;
   }
  }
  break;
 default:
  break;
 }
}
