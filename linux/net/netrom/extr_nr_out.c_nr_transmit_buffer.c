
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {int dest_addr; int source_addr; } ;


 int AX25_ADDR_LEN ;
 unsigned char AX25_CBIT ;
 unsigned char AX25_EBIT ;
 unsigned char AX25_SSSID_SPARE ;
 int ENETUNREACH ;
 int NR_NETWORK_LEN ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (unsigned char*,int *,int ) ;
 int nr_disconnect (struct sock*,int ) ;
 int nr_route_frame (struct sk_buff*,int *) ;
 struct nr_sock* nr_sk (struct sock*) ;
 unsigned char* skb_push (struct sk_buff*,int ) ;
 int sysctl_netrom_network_ttl_initialiser ;

void nr_transmit_buffer(struct sock *sk, struct sk_buff *skb)
{
 struct nr_sock *nr = nr_sk(sk);
 unsigned char *dptr;




 dptr = skb_push(skb, NR_NETWORK_LEN);

 memcpy(dptr, &nr->source_addr, AX25_ADDR_LEN);
 dptr[6] &= ~AX25_CBIT;
 dptr[6] &= ~AX25_EBIT;
 dptr[6] |= AX25_SSSID_SPARE;
 dptr += AX25_ADDR_LEN;

 memcpy(dptr, &nr->dest_addr, AX25_ADDR_LEN);
 dptr[6] &= ~AX25_CBIT;
 dptr[6] |= AX25_EBIT;
 dptr[6] |= AX25_SSSID_SPARE;
 dptr += AX25_ADDR_LEN;

 *dptr++ = sysctl_netrom_network_ttl_initialiser;

 if (!nr_route_frame(skb, ((void*)0))) {
  kfree_skb(skb);
  nr_disconnect(sk, ENETUNREACH);
 }
}
