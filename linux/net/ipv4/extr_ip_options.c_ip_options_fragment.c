
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; scalar_t__ ts_needtime; scalar_t__ ts_needaddr; scalar_t__ rr_needaddr; scalar_t__ rr; scalar_t__ ts; } ;
struct TYPE_2__ {struct ip_options opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPOPT_COPIED (unsigned char) ;


 int memset (unsigned char*,int const,int) ;
 unsigned char* skb_network_header (struct sk_buff*) ;

void ip_options_fragment(struct sk_buff *skb)
{
 unsigned char *optptr = skb_network_header(skb) + sizeof(struct iphdr);
 struct ip_options *opt = &(IPCB(skb)->opt);
 int l = opt->optlen;
 int optlen;

 while (l > 0) {
  switch (*optptr) {
  case 129:
   return;
  case 128:
   l--;
   optptr++;
   continue;
  }
  optlen = optptr[1];
  if (optlen < 2 || optlen > l)
    return;
  if (!IPOPT_COPIED(*optptr))
   memset(optptr, 128, optlen);
  l -= optlen;
  optptr += optlen;
 }
 opt->ts = 0;
 opt->rr = 0;
 opt->rr_needaddr = 0;
 opt->ts_needaddr = 0;
 opt->ts_needtime = 0;
}
