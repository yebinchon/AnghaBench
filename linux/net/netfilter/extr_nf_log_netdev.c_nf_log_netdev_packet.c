
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int protocol; } ;
struct nf_loginfo {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int nf_log_l2packet (struct net*,int ,int ,unsigned int,struct sk_buff const*,struct net_device const*,struct net_device const*,struct nf_loginfo const*,char const*) ;

__attribute__((used)) static void nf_log_netdev_packet(struct net *net, u_int8_t pf,
     unsigned int hooknum,
     const struct sk_buff *skb,
     const struct net_device *in,
     const struct net_device *out,
     const struct nf_loginfo *loginfo,
     const char *prefix)
{
 nf_log_l2packet(net, pf, skb->protocol, hooknum, skb, in, out,
   loginfo, prefix);
}
