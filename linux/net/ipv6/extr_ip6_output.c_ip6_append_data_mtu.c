
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; unsigned int header_len; } ;
struct rt6_info {TYPE_1__ dst; } ;
struct frag_hdr {int dummy; } ;


 int DST_XFRM_TUNNEL ;

__attribute__((used)) static void ip6_append_data_mtu(unsigned int *mtu,
    int *maxfraglen,
    unsigned int fragheaderlen,
    struct sk_buff *skb,
    struct rt6_info *rt,
    unsigned int orig_mtu)
{
 if (!(rt->dst.flags & DST_XFRM_TUNNEL)) {
  if (!skb) {

   *mtu = orig_mtu - rt->dst.header_len;

  } else {




   *mtu = orig_mtu;
  }
  *maxfraglen = ((*mtu - fragheaderlen) & ~7)
         + fragheaderlen - sizeof(struct frag_hdr);
 }
}
