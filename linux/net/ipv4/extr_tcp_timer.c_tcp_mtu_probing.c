
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_3__ {int sysctl_tcp_min_snd_mss; int sysctl_tcp_mtu_probe_floor; int sysctl_tcp_base_mss; int sysctl_tcp_mtu_probing; } ;
struct net {TYPE_1__ ipv4; } ;
struct TYPE_4__ {int enabled; int search_low; int probe_timestamp; } ;
struct inet_connection_sock {int icsk_pmtu_cookie; TYPE_2__ icsk_mtup; } ;


 int max (int,int ) ;
 int min (int ,int) ;
 struct net* sock_net (struct sock*) ;
 int tcp_jiffies32 ;
 int tcp_mss_to_mtu (struct sock*,int) ;
 int tcp_mtu_to_mss (struct sock*,int ) ;
 int tcp_sync_mss (struct sock*,int ) ;

__attribute__((used)) static void tcp_mtu_probing(struct inet_connection_sock *icsk, struct sock *sk)
{
 const struct net *net = sock_net(sk);
 int mss;


 if (!net->ipv4.sysctl_tcp_mtu_probing)
  return;

 if (!icsk->icsk_mtup.enabled) {
  icsk->icsk_mtup.enabled = 1;
  icsk->icsk_mtup.probe_timestamp = tcp_jiffies32;
 } else {
  mss = tcp_mtu_to_mss(sk, icsk->icsk_mtup.search_low) >> 1;
  mss = min(net->ipv4.sysctl_tcp_base_mss, mss);
  mss = max(mss, net->ipv4.sysctl_tcp_mtu_probe_floor);
  mss = max(mss, net->ipv4.sysctl_tcp_min_snd_mss);
  icsk->icsk_mtup.search_low = tcp_mss_to_mtu(sk, mss);
 }
 tcp_sync_mss(sk, icsk->icsk_pmtu_cookie);
}
