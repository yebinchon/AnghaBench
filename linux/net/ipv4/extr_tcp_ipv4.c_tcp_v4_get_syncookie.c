
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct tcphdr {int dummy; } ;
struct sock {int dummy; } ;
struct iphdr {int dummy; } ;


 int __cookie_v4_init_sequence (struct iphdr*,struct tcphdr*,scalar_t__*) ;
 scalar_t__ tcp_get_syncookie_mss (int *,int *,struct sock*,struct tcphdr*) ;
 int tcp_request_sock_ipv4_ops ;
 int tcp_request_sock_ops ;
 int tcp_synq_overflow (struct sock*) ;

u16 tcp_v4_get_syncookie(struct sock *sk, struct iphdr *iph,
    struct tcphdr *th, u32 *cookie)
{
 u16 mss = 0;
 return mss;
}
