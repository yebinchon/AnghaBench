
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct ipt_ip {scalar_t__ proto; int flags; int outiface_mask; int outiface; int iniface_mask; int iniface; TYPE_4__ dst; TYPE_3__ dmsk; TYPE_2__ src; TYPE_1__ smsk; } ;
struct iphdr {int saddr; int daddr; scalar_t__ protocol; } ;


 int IPT_F_FRAG ;
 int IPT_INV_DSTIP ;
 int IPT_INV_FRAG ;
 int IPT_INV_PROTO ;
 int IPT_INV_SRCIP ;
 int IPT_INV_VIA_IN ;
 int IPT_INV_VIA_OUT ;
 scalar_t__ NF_INVF (struct ipt_ip const*,int ,int) ;
 unsigned long ifname_compare_aligned (char const*,int ,int ) ;

__attribute__((used)) static inline bool
ip_packet_match(const struct iphdr *ip,
  const char *indev,
  const char *outdev,
  const struct ipt_ip *ipinfo,
  int isfrag)
{
 unsigned long ret;

 if (NF_INVF(ipinfo, IPT_INV_SRCIP,
      (ip->saddr & ipinfo->smsk.s_addr) != ipinfo->src.s_addr) ||
     NF_INVF(ipinfo, IPT_INV_DSTIP,
      (ip->daddr & ipinfo->dmsk.s_addr) != ipinfo->dst.s_addr))
  return 0;

 ret = ifname_compare_aligned(indev, ipinfo->iniface, ipinfo->iniface_mask);

 if (NF_INVF(ipinfo, IPT_INV_VIA_IN, ret != 0))
  return 0;

 ret = ifname_compare_aligned(outdev, ipinfo->outiface, ipinfo->outiface_mask);

 if (NF_INVF(ipinfo, IPT_INV_VIA_OUT, ret != 0))
  return 0;


 if (ipinfo->proto &&
     NF_INVF(ipinfo, IPT_INV_PROTO, ip->protocol != ipinfo->proto))
  return 0;



 if (NF_INVF(ipinfo, IPT_INV_FRAG,
      (ipinfo->flags & IPT_F_FRAG) && !isfrag))
  return 0;

 return 1;
}
