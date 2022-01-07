
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int data; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct igmpv3_report {int ngrec; } ;
struct igmpv3_grec {int grec_type; int grec_nsrcs; int grec_mca; } ;
typedef int __be32 ;
struct TYPE_2__ {unsigned char* h_source; } ;


 int EINVAL ;






 int br_ip4_multicast_add_group (struct net_bridge*,struct net_bridge_port*,int ,int,unsigned char const*) ;
 int br_ip4_multicast_leave_group (struct net_bridge*,struct net_bridge_port*,int ,int,unsigned char const*) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 struct igmpv3_report* igmpv3_report_hdr (struct sk_buff*) ;
 int ip_mc_may_pull (struct sk_buff*,int) ;
 int ntohs (int ) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int br_ip4_multicast_igmp3_report(struct net_bridge *br,
      struct net_bridge_port *port,
      struct sk_buff *skb,
      u16 vid)
{
 const unsigned char *src;
 struct igmpv3_report *ih;
 struct igmpv3_grec *grec;
 int i;
 int len;
 int num;
 int type;
 int err = 0;
 __be32 group;
 u16 nsrcs;

 ih = igmpv3_report_hdr(skb);
 num = ntohs(ih->ngrec);
 len = skb_transport_offset(skb) + sizeof(*ih);

 for (i = 0; i < num; i++) {
  len += sizeof(*grec);
  if (!ip_mc_may_pull(skb, len))
   return -EINVAL;

  grec = (void *)(skb->data + len - sizeof(*grec));
  group = grec->grec_mca;
  type = grec->grec_type;
  nsrcs = ntohs(grec->grec_nsrcs);

  len += nsrcs * 4;
  if (!ip_mc_may_pull(skb, len))
   return -EINVAL;


  switch (type) {
  case 128:
  case 129:
  case 130:
  case 131:
  case 133:
  case 132:
   break;

  default:
   continue;
  }

  src = eth_hdr(skb)->h_source;
  if ((type == 130 ||
       type == 128) &&
      nsrcs == 0) {
   br_ip4_multicast_leave_group(br, port, group, vid, src);
  } else {
   err = br_ip4_multicast_add_group(br, port, group, vid,
        src);
   if (err)
    break;
  }
 }

 return err;
}
