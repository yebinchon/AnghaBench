
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union tcp_md5_addr {int dummy; } tcp_md5_addr ;
struct tcphdr {int dest; int source; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __u8 ;


 int AF_INET ;
 int LINUX_MIB_TCPMD5FAILURE ;
 int LINUX_MIB_TCPMD5NOTFOUND ;
 int LINUX_MIB_TCPMD5UNEXPECTED ;
 int NET_INC_STATS (int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 scalar_t__ memcmp (int const*,unsigned char*,int) ;
 int net_info_ratelimited (char*,int *,int ,int *,int ,char*) ;
 int ntohs (int ) ;
 int sock_net (struct sock const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff const*) ;
 struct tcp_md5sig_key* tcp_md5_do_lookup (struct sock const*,union tcp_md5_addr*,int ) ;
 int * tcp_parse_md5sig_option (struct tcphdr const*) ;
 int tcp_v4_md5_hash_skb (unsigned char*,struct tcp_md5sig_key*,int *,struct sk_buff const*) ;

__attribute__((used)) static bool tcp_v4_inbound_md5_hash(const struct sock *sk,
        const struct sk_buff *skb)
{
 return 0;
}
