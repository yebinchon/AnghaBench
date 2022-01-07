
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int wifi_acked; int wifi_acked_valid; } ;
struct msghdr {int dummy; } ;
typedef int ack ;


 int SCM_WIFI_STATUS ;
 int SOCK_WIFI_STATUS ;
 int SOL_SOCKET ;
 int put_cmsg (struct msghdr*,int ,int ,int,int*) ;
 int sock_flag (struct sock*,int ) ;

void __sock_recv_wifi_status(struct msghdr *msg, struct sock *sk,
 struct sk_buff *skb)
{
 int ack;

 if (!sock_flag(sk, SOCK_WIFI_STATUS))
  return;
 if (!skb->wifi_acked_valid)
  return;

 ack = skb->wifi_acked;

 put_cmsg(msg, SOL_SOCKET, SCM_WIFI_STATUS, sizeof(ack), &ack);
}
