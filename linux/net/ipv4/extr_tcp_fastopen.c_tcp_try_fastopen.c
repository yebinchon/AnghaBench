
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_fastopen_cookie {int len; int exp; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_7__ {scalar_t__ end_seq; scalar_t__ seq; } ;
struct TYPE_5__ {int sysctl_tcp_fastopen; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;


 int LINUX_MIB_TCPFASTOPENCOOKIEREQD ;
 int LINUX_MIB_TCPFASTOPENPASSIVE ;
 int LINUX_MIB_TCPFASTOPENPASSIVEALTKEY ;
 int LINUX_MIB_TCPFASTOPENPASSIVEFAIL ;
 int NET_INC_STATS (TYPE_2__*,int ) ;
 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 int TFO_SERVER_COOKIE_NOT_REQD ;
 int TFO_SERVER_ENABLE ;
 TYPE_2__* sock_net (struct sock*) ;
 int tcp_fastopen_cookie_gen (struct sock*,struct request_sock*,struct sk_buff*,struct tcp_fastopen_cookie*) ;
 int tcp_fastopen_cookie_gen_check (struct sock*,struct request_sock*,struct sk_buff*,struct tcp_fastopen_cookie*,struct tcp_fastopen_cookie*) ;
 struct sock* tcp_fastopen_create_child (struct sock*,struct sk_buff*,struct request_sock*) ;
 scalar_t__ tcp_fastopen_no_cookie (struct sock*,struct dst_entry const*,int ) ;
 scalar_t__ tcp_fastopen_queue_check (struct sock*) ;

struct sock *tcp_try_fastopen(struct sock *sk, struct sk_buff *skb,
         struct request_sock *req,
         struct tcp_fastopen_cookie *foc,
         const struct dst_entry *dst)
{
 bool syn_data = TCP_SKB_CB(skb)->end_seq != TCP_SKB_CB(skb)->seq + 1;
 int tcp_fastopen = sock_net(sk)->ipv4.sysctl_tcp_fastopen;
 struct tcp_fastopen_cookie valid_foc = { .len = -1 };
 struct sock *child;
 int ret = 0;

 if (foc->len == 0)
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPFASTOPENCOOKIEREQD);

 if (!((tcp_fastopen & TFO_SERVER_ENABLE) &&
       (syn_data || foc->len >= 0) &&
       tcp_fastopen_queue_check(sk))) {
  foc->len = -1;
  return ((void*)0);
 }

 if (syn_data &&
     tcp_fastopen_no_cookie(sk, dst, TFO_SERVER_COOKIE_NOT_REQD))
  goto fastopen;

 if (foc->len == 0) {

  tcp_fastopen_cookie_gen(sk, req, skb, &valid_foc);
 } else if (foc->len > 0) {
  ret = tcp_fastopen_cookie_gen_check(sk, req, skb, foc,
          &valid_foc);
  if (!ret) {
   NET_INC_STATS(sock_net(sk),
          LINUX_MIB_TCPFASTOPENPASSIVEFAIL);
  } else {
fastopen:
   child = tcp_fastopen_create_child(sk, skb, req);
   if (child) {
    if (ret == 2) {
     valid_foc.exp = foc->exp;
     *foc = valid_foc;
     NET_INC_STATS(sock_net(sk),
            LINUX_MIB_TCPFASTOPENPASSIVEALTKEY);
    } else {
     foc->len = -1;
    }
    NET_INC_STATS(sock_net(sk),
           LINUX_MIB_TCPFASTOPENPASSIVE);
    return child;
   }
   NET_INC_STATS(sock_net(sk),
          LINUX_MIB_TCPFASTOPENPASSIVEFAIL);
  }
 }
 valid_foc.exp = foc->exp;
 *foc = valid_foc;
 return ((void*)0);
}
