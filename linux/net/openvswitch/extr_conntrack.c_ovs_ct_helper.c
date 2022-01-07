
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_helper {int (* help ) (struct sk_buff*,unsigned int,struct nf_conn*,int) ;} ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int status; } ;
struct ipv6hdr {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int __be16 ;
struct TYPE_2__ {int nexthdr; } ;


 int IPS_SEQ_ADJUST_BIT ;
 int IP_CT_RELATED_REPLY ;


 int NF_ACCEPT ;
 int NF_DROP ;
 int WARN_ONCE (int,char*) ;
 int htons (int) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_skip_exthdr (struct sk_buff*,int,int *,int*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_seq_adjust (struct sk_buff*,struct nf_conn*,int,unsigned int) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int pr_debug (char*) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,unsigned int,struct nf_conn*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ovs_ct_helper(struct sk_buff *skb, u16 proto)
{
 const struct nf_conntrack_helper *helper;
 const struct nf_conn_help *help;
 enum ip_conntrack_info ctinfo;
 unsigned int protoff;
 struct nf_conn *ct;
 int err;

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct || ctinfo == IP_CT_RELATED_REPLY)
  return NF_ACCEPT;

 help = nfct_help(ct);
 if (!help)
  return NF_ACCEPT;

 helper = rcu_dereference(help->helper);
 if (!helper)
  return NF_ACCEPT;

 switch (proto) {
 case 129:
  protoff = ip_hdrlen(skb);
  break;
 case 128: {
  u8 nexthdr = ipv6_hdr(skb)->nexthdr;
  __be16 frag_off;
  int ofs;

  ofs = ipv6_skip_exthdr(skb, sizeof(struct ipv6hdr), &nexthdr,
           &frag_off);
  if (ofs < 0 || (frag_off & htons(~0x7)) != 0) {
   pr_debug("proto header not found\n");
   return NF_ACCEPT;
  }
  protoff = ofs;
  break;
 }
 default:
  WARN_ONCE(1, "helper invoked on non-IP family!");
  return NF_DROP;
 }

 err = helper->help(skb, protoff, ct, ctinfo);
 if (err != NF_ACCEPT)
  return err;





 if (test_bit(IPS_SEQ_ADJUST_BIT, &ct->status) &&
     !nf_ct_seq_adjust(skb, ct, ctinfo, protoff))
  return NF_DROP;
 return NF_ACCEPT;
}
