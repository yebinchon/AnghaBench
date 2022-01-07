
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int LINUX_MIB_TCPSPURIOUS_RTX_HOSTQUEUES ;
 int NET_INC_STATS (int ,int ) ;
 int skb_fclone_busy (struct sock const*,struct sk_buff const*) ;
 int sock_net (struct sock const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool skb_still_in_host_queue(const struct sock *sk,
        const struct sk_buff *skb)
{
 if (unlikely(skb_fclone_busy(sk, skb))) {
  NET_INC_STATS(sock_net(sk),
         LINUX_MIB_TCPSPURIOUS_RTX_HOSTQUEUES);
  return 1;
 }
 return 0;
}
