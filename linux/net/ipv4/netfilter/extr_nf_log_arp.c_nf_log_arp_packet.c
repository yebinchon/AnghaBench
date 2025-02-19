
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_loginfo {int dummy; } ;
struct nf_log_buf {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct nf_loginfo default_loginfo ;
 int dump_arp_packet (struct nf_log_buf*,struct nf_loginfo const*,struct sk_buff const*,int ) ;
 int init_net ;
 int net_eq (struct net*,int *) ;
 int nf_log_buf_close (struct nf_log_buf*) ;
 struct nf_log_buf* nf_log_buf_open () ;
 int nf_log_dump_packet_common (struct nf_log_buf*,int ,unsigned int,struct sk_buff const*,struct net_device const*,struct net_device const*,struct nf_loginfo const*,char const*) ;
 int sysctl_nf_log_all_netns ;

__attribute__((used)) static void nf_log_arp_packet(struct net *net, u_int8_t pf,
         unsigned int hooknum, const struct sk_buff *skb,
         const struct net_device *in,
         const struct net_device *out,
         const struct nf_loginfo *loginfo,
         const char *prefix)
{
 struct nf_log_buf *m;


 if (!net_eq(net, &init_net) && !sysctl_nf_log_all_netns)
  return;

 m = nf_log_buf_open();

 if (!loginfo)
  loginfo = &default_loginfo;

 nf_log_dump_packet_common(m, pf, hooknum, skb, in, out, loginfo,
      prefix);
 dump_arp_packet(m, loginfo, skb, 0);

 nf_log_buf_close(m);
}
