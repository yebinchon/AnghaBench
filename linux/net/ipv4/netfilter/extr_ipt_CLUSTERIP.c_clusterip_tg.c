
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct xt_action_param {struct ipt_clusterip_tgt_info* targinfo; } ;
struct sk_buff {int pkt_type; } ;
struct nf_conn {int mark; TYPE_1__* tuplehash; } ;
struct ipt_clusterip_tgt_info {int config; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {int tuple; } ;


 scalar_t__ IPPROTO_ICMP ;
 size_t IP_CT_DIR_ORIGINAL ;





 unsigned int NF_DROP ;
 int PACKET_HOST ;
 unsigned int XT_CONTINUE ;
 int clusterip_hashfn (struct sk_buff*,int ) ;
 int clusterip_responsible (int ,int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int nf_ct_dump_tuple_ip (int *) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static unsigned int
clusterip_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ipt_clusterip_tgt_info *cipinfo = par->targinfo;
 struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 u_int32_t hash;





 ct = nf_ct_get(skb, &ctinfo);
 if (ct == ((void*)0))
  return NF_DROP;



 if (ip_hdr(skb)->protocol == IPPROTO_ICMP &&
     (ctinfo == 129 ||
      ctinfo == 128))
  return XT_CONTINUE;





 hash = clusterip_hashfn(skb, cipinfo->config);

 switch (ctinfo) {
 case 130:
  ct->mark = hash;
  break;
 case 129:
 case 128:



 case 132:
 case 131:
  break;
 default:
  break;
 }




 pr_debug("hash=%u ct_hash=%u ", hash, ct->mark);
 if (!clusterip_responsible(cipinfo->config, hash)) {
  pr_debug("not responsible\n");
  return NF_DROP;
 }
 pr_debug("responsible\n");



 skb->pkt_type = PACKET_HOST;

 return XT_CONTINUE;
}
