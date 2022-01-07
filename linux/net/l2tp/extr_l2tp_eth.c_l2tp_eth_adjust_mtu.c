
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct udphdr {int dummy; } ;
struct net_device {int needed_headroom; scalar_t__ min_mtu; scalar_t__ max_mtu; scalar_t__ mtu; } ;
struct l2tp_tunnel {scalar_t__ encap; int sock; } ;
struct l2tp_session {scalar_t__ hdr_len; } ;


 scalar_t__ ETH_DATA_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ L2TP_ENCAPTYPE_UDP ;
 scalar_t__ kernel_sock_ip_overhead (int ) ;
 scalar_t__ l2tp_tunnel_dst_mtu (struct l2tp_tunnel*) ;
 int lock_sock (int ) ;
 int release_sock (int ) ;

__attribute__((used)) static void l2tp_eth_adjust_mtu(struct l2tp_tunnel *tunnel,
    struct l2tp_session *session,
    struct net_device *dev)
{
 unsigned int overhead = 0;
 u32 l3_overhead = 0;
 u32 mtu;


 if (tunnel->encap == L2TP_ENCAPTYPE_UDP) {
  overhead += sizeof(struct udphdr);
  dev->needed_headroom += sizeof(struct udphdr);
 }

 lock_sock(tunnel->sock);
 l3_overhead = kernel_sock_ip_overhead(tunnel->sock);
 release_sock(tunnel->sock);

 if (l3_overhead == 0) {





  return;
 }



 overhead += session->hdr_len + ETH_HLEN + l3_overhead;

 mtu = l2tp_tunnel_dst_mtu(tunnel) - overhead;
 if (mtu < dev->min_mtu || mtu > dev->max_mtu)
  dev->mtu = ETH_DATA_LEN - overhead;
 else
  dev->mtu = mtu;

 dev->needed_headroom += session->hdr_len;
}
