
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int protocol; scalar_t__ sk; scalar_t__ ignore_df; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int frag_off; } ;


 int EMSGSIZE ;
 int ETH_P_IP ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_XFRM_TUNNEL_SIZE ;
 int IP_DF ;
 int dst_mtu (int ) ;
 int htonl (int) ;
 int htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_skb_dst_mtu (scalar_t__,struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_gso_validate_network_len (struct sk_buff*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int xfrm_local_error (struct sk_buff*,int) ;

__attribute__((used)) static int xfrm4_tunnel_check_size(struct sk_buff *skb)
{
 int mtu, ret = 0;

 if (IPCB(skb)->flags & IPSKB_XFRM_TUNNEL_SIZE)
  goto out;

 if (!(ip_hdr(skb)->frag_off & htons(IP_DF)) || skb->ignore_df)
  goto out;

 mtu = dst_mtu(skb_dst(skb));
 if ((!skb_is_gso(skb) && skb->len > mtu) ||
     (skb_is_gso(skb) &&
      !skb_gso_validate_network_len(skb, ip_skb_dst_mtu(skb->sk, skb)))) {
  skb->protocol = htons(ETH_P_IP);

  if (skb->sk)
   xfrm_local_error(skb, mtu);
  else
   icmp_send(skb, ICMP_DEST_UNREACH,
      ICMP_FRAG_NEEDED, htonl(mtu));
  ret = -EMSGSIZE;
 }
out:
 return ret;
}
