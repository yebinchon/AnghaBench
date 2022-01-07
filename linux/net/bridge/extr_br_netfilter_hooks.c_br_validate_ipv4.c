
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int version; int tot_len; } ;
struct inet_skb_parm {int dummy; } ;


 int IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_CSUMERRORS ;
 int IPSTATS_MIB_INDISCARDS ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IPSTATS_MIB_INTRUNCATEDPKTS ;
 int __IP_INC_STATS (struct net*,int ) ;
 int ip_fast_csum (int *,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int br_validate_ipv4(struct net *net, struct sk_buff *skb)
{
 const struct iphdr *iph;
 u32 len;

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto inhdr_error;

 iph = ip_hdr(skb);


 if (iph->ihl < 5 || iph->version != 4)
  goto inhdr_error;

 if (!pskb_may_pull(skb, iph->ihl*4))
  goto inhdr_error;

 iph = ip_hdr(skb);
 if (unlikely(ip_fast_csum((u8 *)iph, iph->ihl)))
  goto csum_error;

 len = ntohs(iph->tot_len);
 if (skb->len < len) {
  __IP_INC_STATS(net, IPSTATS_MIB_INTRUNCATEDPKTS);
  goto drop;
 } else if (len < (iph->ihl*4))
  goto inhdr_error;

 if (pskb_trim_rcsum(skb, len)) {
  __IP_INC_STATS(net, IPSTATS_MIB_INDISCARDS);
  goto drop;
 }

 memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));





 return 0;

csum_error:
 __IP_INC_STATS(net, IPSTATS_MIB_CSUMERRORS);
inhdr_error:
 __IP_INC_STATS(net, IPSTATS_MIB_INHDRERRORS);
drop:
 return -1;
}
