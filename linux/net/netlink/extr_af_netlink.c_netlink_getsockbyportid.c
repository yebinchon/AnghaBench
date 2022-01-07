
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {scalar_t__ sk_state; int sk_protocol; } ;
struct netlink_sock {scalar_t__ dst_portid; scalar_t__ portid; } ;


 int ECONNREFUSED ;
 struct sock* ERR_PTR (int ) ;
 scalar_t__ NETLINK_CONNECTED ;
 struct sock* netlink_lookup (int ,int ,int ) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static struct sock *netlink_getsockbyportid(struct sock *ssk, u32 portid)
{
 struct sock *sock;
 struct netlink_sock *nlk;

 sock = netlink_lookup(sock_net(ssk), ssk->sk_protocol, portid);
 if (!sock)
  return ERR_PTR(-ECONNREFUSED);


 nlk = nlk_sk(sock);
 if (sock->sk_state == NETLINK_CONNECTED &&
     nlk->dst_portid != nlk_sk(ssk)->portid) {
  sock_put(sock);
  return ERR_PTR(-ECONNREFUSED);
 }
 return sock;
}
