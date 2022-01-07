
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
typedef int u8 ;
struct xt_tcpoptstrip_target_info {int strip_bmap; } ;
struct xt_action_param {scalar_t__ fragoff; struct xt_tcpoptstrip_target_info* targinfo; } ;
struct tcphdr {int doff; int check; } ;
struct sk_buff {int dummy; } ;
typedef int _th ;


 unsigned int NF_DROP ;
 int TCPOPT_NOP ;
 unsigned int XT_CONTINUE ;
 int htons (int) ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int) ;
 int memset (int*,int,unsigned int) ;
 unsigned int optlen (int*,unsigned int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct tcphdr*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int tcpoptstrip_test_bit (int ,int) ;

__attribute__((used)) static unsigned int
tcpoptstrip_mangle_packet(struct sk_buff *skb,
     const struct xt_action_param *par,
     unsigned int tcphoff)
{
 const struct xt_tcpoptstrip_target_info *info = par->targinfo;
 struct tcphdr *tcph, _th;
 unsigned int optl, i, j;
 u_int16_t n, o;
 u_int8_t *opt;
 int tcp_hdrlen;


 if (par->fragoff != 0)
  return XT_CONTINUE;

 tcph = skb_header_pointer(skb, tcphoff, sizeof(_th), &_th);
 if (!tcph)
  return NF_DROP;

 tcp_hdrlen = tcph->doff * 4;
 if (tcp_hdrlen < sizeof(struct tcphdr))
  return NF_DROP;

 if (skb_ensure_writable(skb, tcphoff + tcp_hdrlen))
  return NF_DROP;


 tcph = (struct tcphdr *)(skb_network_header(skb) + tcphoff);
 opt = (u8 *)tcph;





 for (i = sizeof(struct tcphdr); i < tcp_hdrlen - 1; i += optl) {
  optl = optlen(opt, i);

  if (i + optl > tcp_hdrlen)
   break;

  if (!tcpoptstrip_test_bit(info->strip_bmap, opt[i]))
   continue;

  for (j = 0; j < optl; ++j) {
   o = opt[i+j];
   n = TCPOPT_NOP;
   if ((i + j) % 2 == 0) {
    o <<= 8;
    n <<= 8;
   }
   inet_proto_csum_replace2(&tcph->check, skb, htons(o),
       htons(n), 0);
  }
  memset(opt + i, TCPOPT_NOP, optl);
 }

 return XT_CONTINUE;
}
