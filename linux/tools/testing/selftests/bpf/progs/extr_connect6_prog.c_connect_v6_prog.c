
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void** s6_addr32; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; void* sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__* daddr; void* dport; struct sockaddr_in6 sport; struct sockaddr_in6 saddr; } ;
struct bpf_sock_tuple {TYPE_1__ ipv6; } ;
struct bpf_sock_addr {scalar_t__ type; void* user_port; void** user_ip6; } ;
struct bpf_sock {scalar_t__* src_ip6; scalar_t__ src_port; } ;
typedef int sa ;


 int AF_INET6 ;
 int BPF_F_CURRENT_NETNS ;
 int DST_REWRITE_IP6_0 ;
 int DST_REWRITE_IP6_1 ;
 int DST_REWRITE_IP6_2 ;
 int DST_REWRITE_IP6_3 ;
 scalar_t__ DST_REWRITE_PORT6 ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int SRC_REWRITE_IP6_0 ;
 int SRC_REWRITE_IP6_1 ;
 int SRC_REWRITE_IP6_2 ;
 int SRC_REWRITE_IP6_3 ;
 scalar_t__ bpf_bind (struct bpf_sock_addr*,struct sockaddr*,int) ;
 void* bpf_htonl (int ) ;
 void* bpf_htons (scalar_t__) ;
 struct bpf_sock* bpf_sk_lookup_tcp (struct bpf_sock_addr*,struct bpf_sock_tuple*,int,int ,int ) ;
 struct bpf_sock* bpf_sk_lookup_udp (struct bpf_sock_addr*,struct bpf_sock_tuple*,int,int ,int ) ;
 int bpf_sk_release (struct bpf_sock*) ;
 int memset (struct sockaddr_in6*,int ,int) ;

int connect_v6_prog(struct bpf_sock_addr *ctx)
{
 struct bpf_sock_tuple tuple = {};
 struct sockaddr_in6 sa;
 struct bpf_sock *sk;


 memset(&tuple.ipv6.saddr, 0, sizeof(tuple.ipv6.saddr));
 memset(&tuple.ipv6.sport, 0, sizeof(tuple.ipv6.sport));

 tuple.ipv6.daddr[0] = bpf_htonl(DST_REWRITE_IP6_0);
 tuple.ipv6.daddr[1] = bpf_htonl(DST_REWRITE_IP6_1);
 tuple.ipv6.daddr[2] = bpf_htonl(DST_REWRITE_IP6_2);
 tuple.ipv6.daddr[3] = bpf_htonl(DST_REWRITE_IP6_3);

 tuple.ipv6.dport = bpf_htons(DST_REWRITE_PORT6);

 if (ctx->type != SOCK_STREAM && ctx->type != SOCK_DGRAM)
  return 0;
 else if (ctx->type == SOCK_STREAM)
  sk = bpf_sk_lookup_tcp(ctx, &tuple, sizeof(tuple.ipv6),
           BPF_F_CURRENT_NETNS, 0);
 else
  sk = bpf_sk_lookup_udp(ctx, &tuple, sizeof(tuple.ipv6),
           BPF_F_CURRENT_NETNS, 0);

 if (!sk)
  return 0;

 if (sk->src_ip6[0] != tuple.ipv6.daddr[0] ||
     sk->src_ip6[1] != tuple.ipv6.daddr[1] ||
     sk->src_ip6[2] != tuple.ipv6.daddr[2] ||
     sk->src_ip6[3] != tuple.ipv6.daddr[3] ||
     sk->src_port != DST_REWRITE_PORT6) {
  bpf_sk_release(sk);
  return 0;
 }

 bpf_sk_release(sk);


 ctx->user_ip6[0] = bpf_htonl(DST_REWRITE_IP6_0);
 ctx->user_ip6[1] = bpf_htonl(DST_REWRITE_IP6_1);
 ctx->user_ip6[2] = bpf_htonl(DST_REWRITE_IP6_2);
 ctx->user_ip6[3] = bpf_htonl(DST_REWRITE_IP6_3);

 ctx->user_port = bpf_htons(DST_REWRITE_PORT6);


 memset(&sa, 0, sizeof(sa));

 sa.sin6_family = AF_INET6;
 sa.sin6_port = bpf_htons(0);

 sa.sin6_addr.s6_addr32[0] = bpf_htonl(SRC_REWRITE_IP6_0);
 sa.sin6_addr.s6_addr32[1] = bpf_htonl(SRC_REWRITE_IP6_1);
 sa.sin6_addr.s6_addr32[2] = bpf_htonl(SRC_REWRITE_IP6_2);
 sa.sin6_addr.s6_addr32[3] = bpf_htonl(SRC_REWRITE_IP6_3);

 if (bpf_bind(ctx, (struct sockaddr *)&sa, sizeof(sa)) != 0)
  return 0;

 return 1;
}
