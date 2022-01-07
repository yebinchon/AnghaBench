
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; struct net_device* dev; } ;
struct TYPE_4__ {unsigned int logflags; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
struct nf_loginfo {scalar_t__ type; TYPE_2__ u; } ;
struct nf_log_buf {int dummy; } ;
struct net_device {int type; unsigned int hard_header_len; } ;
struct TYPE_6__ {int h_proto; int h_dest; int h_source; } ;



 unsigned int NF_LOG_MACDECODE ;
 scalar_t__ NF_LOG_TYPE_LOG ;
 TYPE_3__* eth_hdr (struct sk_buff const*) ;
 int nf_log_buf_add (struct nf_log_buf*,char*,...) ;
 int ntohs (int ) ;
 unsigned char* skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static void dump_ipv4_mac_header(struct nf_log_buf *m,
       const struct nf_loginfo *info,
       const struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 unsigned int logflags = 0;

 if (info->type == NF_LOG_TYPE_LOG)
  logflags = info->u.log.logflags;

 if (!(logflags & NF_LOG_MACDECODE))
  goto fallback;

 switch (dev->type) {
 case 128:
  nf_log_buf_add(m, "MACSRC=%pM MACDST=%pM MACPROTO=%04x ",
          eth_hdr(skb)->h_source, eth_hdr(skb)->h_dest,
          ntohs(eth_hdr(skb)->h_proto));
  return;
 default:
  break;
 }

fallback:
 nf_log_buf_add(m, "MAC=");
 if (dev->hard_header_len &&
     skb->mac_header != skb->network_header) {
  const unsigned char *p = skb_mac_header(skb);
  unsigned int i;

  nf_log_buf_add(m, "%02x", *p++);
  for (i = 1; i < dev->hard_header_len; i++, p++)
   nf_log_buf_add(m, ":%02x", *p);
 }
 nf_log_buf_add(m, " ");
}
