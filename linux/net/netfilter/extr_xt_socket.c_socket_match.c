
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_socket_mtinfo1 {int flags; } ;
struct xt_action_param {int dummy; } ;
struct sock {int sk_mark; } ;
struct sk_buff {struct sock* sk; int mark; } ;
struct TYPE_2__ {scalar_t__ inet_rcv_saddr; } ;


 int XT_SOCKET_NOWILDCARD ;
 int XT_SOCKET_RESTORESKMARK ;
 int XT_SOCKET_TRANSPARENT ;
 TYPE_1__* inet_sk (struct sock*) ;
 int inet_sk_transparent (struct sock*) ;
 int net_eq (int ,int ) ;
 struct sock* nf_sk_lookup_slow_v4 (int ,struct sk_buff const*,int ) ;
 scalar_t__ sk_fullsock (struct sock*) ;
 int sock_gen_put (struct sock*) ;
 int sock_net (struct sock*) ;
 int xt_in (struct xt_action_param*) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool
socket_match(const struct sk_buff *skb, struct xt_action_param *par,
      const struct xt_socket_mtinfo1 *info)
{
 struct sk_buff *pskb = (struct sk_buff *)skb;
 struct sock *sk = skb->sk;

 if (sk && !net_eq(xt_net(par), sock_net(sk)))
  sk = ((void*)0);

 if (!sk)
  sk = nf_sk_lookup_slow_v4(xt_net(par), skb, xt_in(par));

 if (sk) {
  bool wildcard;
  bool transparent = 1;




  wildcard = (!(info->flags & XT_SOCKET_NOWILDCARD) &&
       sk_fullsock(sk) &&
       inet_sk(sk)->inet_rcv_saddr == 0);




  if (info->flags & XT_SOCKET_TRANSPARENT)
   transparent = inet_sk_transparent(sk);

  if (info->flags & XT_SOCKET_RESTORESKMARK && !wildcard &&
      transparent && sk_fullsock(sk))
   pskb->mark = sk->sk_mark;

  if (sk != skb->sk)
   sock_gen_put(sk);

  if (wildcard || !transparent)
   sk = ((void*)0);
 }

 return sk != ((void*)0);
}
