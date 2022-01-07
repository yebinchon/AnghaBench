
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int saddr; int protocol; } ;
struct clusterip_config {int hash_mode; int num_total_nodes; int hash_initval; } ;


 int BUG () ;



 struct iphdr* ip_hdr (struct sk_buff const*) ;
 unsigned long jhash_1word (int ,int ) ;
 unsigned long jhash_2words (int ,int ,int ) ;
 unsigned long jhash_3words (int ,int ,int ,int ) ;
 int net_info_ratelimited (char*,int ) ;
 int ntohl (int ) ;
 int pr_info (char*,int) ;
 int proto_ports_offset (int ) ;
 scalar_t__ reciprocal_scale (unsigned long,int ) ;
 int * skb_header_pointer (struct sk_buff const*,int,int,int *) ;

__attribute__((used)) static inline u_int32_t
clusterip_hashfn(const struct sk_buff *skb,
   const struct clusterip_config *config)
{
 const struct iphdr *iph = ip_hdr(skb);
 unsigned long hashval;
 u_int16_t sport = 0, dport = 0;
 int poff;

 poff = proto_ports_offset(iph->protocol);
 if (poff >= 0) {
  const u_int16_t *ports;
  u16 _ports[2];

  ports = skb_header_pointer(skb, iph->ihl * 4 + poff, 4, _ports);
  if (ports) {
   sport = ports[0];
   dport = ports[1];
  }
 } else {
  net_info_ratelimited("unknown protocol %u\n", iph->protocol);
 }

 switch (config->hash_mode) {
 case 130:
  hashval = jhash_1word(ntohl(iph->saddr),
          config->hash_initval);
  break;
 case 129:
  hashval = jhash_2words(ntohl(iph->saddr), sport,
           config->hash_initval);
  break;
 case 128:
  hashval = jhash_3words(ntohl(iph->saddr), sport, dport,
           config->hash_initval);
  break;
 default:

  hashval = 0;


  pr_info("unknown mode %u\n", config->hash_mode);
  BUG();
  break;
 }


 return reciprocal_scale(hashval, config->num_total_nodes) + 1;
}
