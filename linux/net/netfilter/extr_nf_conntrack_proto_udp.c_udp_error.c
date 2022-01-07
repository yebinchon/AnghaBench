
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udphdr {int check; int len; } ;
struct sk_buff {unsigned int len; } ;
struct nf_hook_state {scalar_t__ hook; int pf; TYPE_2__* net; } ;
typedef int _hdr ;
struct TYPE_3__ {scalar_t__ sysctl_checksum; } ;
struct TYPE_4__ {TYPE_1__ ct; } ;


 int IPPROTO_UDP ;
 scalar_t__ NF_INET_PRE_ROUTING ;
 scalar_t__ nf_checksum (struct sk_buff*,scalar_t__,unsigned int,int ,int ) ;
 int ntohs (int ) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct udphdr*) ;
 int udp_error_log (struct sk_buff*,struct nf_hook_state const*,char*) ;

__attribute__((used)) static bool udp_error(struct sk_buff *skb,
        unsigned int dataoff,
        const struct nf_hook_state *state)
{
 unsigned int udplen = skb->len - dataoff;
 const struct udphdr *hdr;
 struct udphdr _hdr;


 hdr = skb_header_pointer(skb, dataoff, sizeof(_hdr), &_hdr);
 if (!hdr) {
  udp_error_log(skb, state, "short packet");
  return 1;
 }


 if (ntohs(hdr->len) > udplen || ntohs(hdr->len) < sizeof(*hdr)) {
  udp_error_log(skb, state, "truncated/malformed packet");
  return 1;
 }


 if (!hdr->check)
  return 0;





 if (state->hook == NF_INET_PRE_ROUTING &&
     state->net->ct.sysctl_checksum &&
     nf_checksum(skb, state->hook, dataoff, IPPROTO_UDP, state->pf)) {
  udp_error_log(skb, state, "bad checksum");
  return 1;
 }

 return 0;
}
