
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; } ;
struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_ALL ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ dev_parse_header_protocol (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int skb_probe_transport_header (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void packet_parse_headers(struct sk_buff *skb, struct socket *sock)
{
 if ((!skb->protocol || skb->protocol == htons(ETH_P_ALL)) &&
     sock->type == SOCK_RAW) {
  skb_reset_mac_header(skb);
  skb->protocol = dev_parse_header_protocol(skb);
 }

 skb_probe_transport_header(skb);
}
