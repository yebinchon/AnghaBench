
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct tcphdr {int doff; } ;
struct sk_buff {unsigned int len; } ;
struct nf_hook_state {scalar_t__ hook; int pf; TYPE_2__* net; } ;
struct TYPE_3__ {scalar_t__ sysctl_checksum; } ;
struct TYPE_4__ {TYPE_1__ ct; } ;


 int IPPROTO_TCP ;
 scalar_t__ NF_INET_PRE_ROUTING ;
 size_t TCPHDR_CWR ;
 size_t TCPHDR_ECE ;
 size_t TCPHDR_PSH ;
 scalar_t__ nf_checksum (struct sk_buff*,scalar_t__,unsigned int,int ,int ) ;
 int tcp_error_log (struct sk_buff*,struct nf_hook_state const*,char*) ;
 size_t tcp_flag_byte (struct tcphdr const*) ;
 int * tcp_valid_flags ;

__attribute__((used)) static bool tcp_error(const struct tcphdr *th,
        struct sk_buff *skb,
        unsigned int dataoff,
        const struct nf_hook_state *state)
{
 unsigned int tcplen = skb->len - dataoff;
 u8 tcpflags;


 if (th->doff*4 < sizeof(struct tcphdr) || tcplen < th->doff*4) {
  tcp_error_log(skb, state, "truncated packet");
  return 1;
 }






 if (state->net->ct.sysctl_checksum &&
     state->hook == NF_INET_PRE_ROUTING &&
     nf_checksum(skb, state->hook, dataoff, IPPROTO_TCP, state->pf)) {
  tcp_error_log(skb, state, "bad checksum");
  return 1;
 }


 tcpflags = (tcp_flag_byte(th) & ~(TCPHDR_ECE|TCPHDR_CWR|TCPHDR_PSH));
 if (!tcp_valid_flags[tcpflags]) {
  tcp_error_log(skb, state, "invalid tcp flag combination");
  return 1;
 }

 return 0;
}
