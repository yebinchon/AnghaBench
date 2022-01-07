
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct ip6t_srh1* matchinfo; } ;
struct sk_buff {int len; } ;
struct ipv6_sr_hdr {scalar_t__ type; scalar_t__ segments_left; scalar_t__ first_segment; scalar_t__ nexthdr; scalar_t__ hdrlen; scalar_t__ tag; } ;
struct ip6t_srh1 {int mt_flags; scalar_t__ next_hdr; scalar_t__ hdr_len; scalar_t__ segs_left; scalar_t__ last_entry; scalar_t__ tag; int lsid_addr; int lsid_msk; int nsid_addr; int nsid_msk; int psid_addr; int psid_msk; } ;
struct in6_addr {scalar_t__ type; scalar_t__ segments_left; scalar_t__ first_segment; scalar_t__ nexthdr; scalar_t__ hdrlen; scalar_t__ tag; } ;
typedef int _srh ;
typedef int _psid ;
typedef int _nsid ;
typedef int _lsid ;


 int IP6T_SRH_INV_LAST_EQ ;
 int IP6T_SRH_INV_LAST_GT ;
 int IP6T_SRH_INV_LAST_LT ;
 int IP6T_SRH_INV_LEN_EQ ;
 int IP6T_SRH_INV_LEN_GT ;
 int IP6T_SRH_INV_LEN_LT ;
 int IP6T_SRH_INV_LSID ;
 int IP6T_SRH_INV_NEXTHDR ;
 int IP6T_SRH_INV_NSID ;
 int IP6T_SRH_INV_PSID ;
 int IP6T_SRH_INV_SEGS_EQ ;
 int IP6T_SRH_INV_SEGS_GT ;
 int IP6T_SRH_INV_SEGS_LT ;
 int IP6T_SRH_INV_TAG ;
 int IP6T_SRH_LAST_EQ ;
 int IP6T_SRH_LAST_GT ;
 int IP6T_SRH_LAST_LT ;
 int IP6T_SRH_LEN_EQ ;
 int IP6T_SRH_LEN_GT ;
 int IP6T_SRH_LEN_LT ;
 int IP6T_SRH_LSID ;
 int IP6T_SRH_NEXTHDR ;
 int IP6T_SRH_NSID ;
 int IP6T_SRH_PSID ;
 int IP6T_SRH_SEGS_EQ ;
 int IP6T_SRH_SEGS_GT ;
 int IP6T_SRH_SEGS_LT ;
 int IP6T_SRH_TAG ;
 int IPPROTO_ROUTING ;
 scalar_t__ IPV6_SRCRT_TYPE_4 ;
 scalar_t__ NF_SRH_INVF (struct ip6t_srh1 const*,int ,int) ;
 scalar_t__ ipv6_find_hdr (struct sk_buff const*,int*,int ,int *,int *) ;
 int ipv6_masked_addr_cmp (struct ipv6_sr_hdr*,int *,int *) ;
 int ipv6_optlen (struct ipv6_sr_hdr*) ;
 struct ipv6_sr_hdr* skb_header_pointer (struct sk_buff const*,int,int,struct ipv6_sr_hdr*) ;

__attribute__((used)) static bool srh1_mt6(const struct sk_buff *skb, struct xt_action_param *par)
{
 int hdrlen, psidoff, nsidoff, lsidoff, srhoff = 0;
 const struct ip6t_srh1 *srhinfo = par->matchinfo;
 struct in6_addr *psid, *nsid, *lsid;
 struct in6_addr _psid, _nsid, _lsid;
 struct ipv6_sr_hdr *srh;
 struct ipv6_sr_hdr _srh;

 if (ipv6_find_hdr(skb, &srhoff, IPPROTO_ROUTING, ((void*)0), ((void*)0)) < 0)
  return 0;
 srh = skb_header_pointer(skb, srhoff, sizeof(_srh), &_srh);
 if (!srh)
  return 0;

 hdrlen = ipv6_optlen(srh);
 if (skb->len - srhoff < hdrlen)
  return 0;

 if (srh->type != IPV6_SRCRT_TYPE_4)
  return 0;

 if (srh->segments_left > srh->first_segment)
  return 0;


 if (srhinfo->mt_flags & IP6T_SRH_NEXTHDR)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_NEXTHDR,
    !(srh->nexthdr == srhinfo->next_hdr)))
   return 0;


 if (srhinfo->mt_flags & IP6T_SRH_LEN_EQ)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LEN_EQ,
    !(srh->hdrlen == srhinfo->hdr_len)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_LEN_GT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LEN_GT,
    !(srh->hdrlen > srhinfo->hdr_len)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_LEN_LT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LEN_LT,
    !(srh->hdrlen < srhinfo->hdr_len)))
   return 0;


 if (srhinfo->mt_flags & IP6T_SRH_SEGS_EQ)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_SEGS_EQ,
    !(srh->segments_left == srhinfo->segs_left)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_SEGS_GT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_SEGS_GT,
    !(srh->segments_left > srhinfo->segs_left)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_SEGS_LT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_SEGS_LT,
    !(srh->segments_left < srhinfo->segs_left)))
   return 0;






 if (srhinfo->mt_flags & IP6T_SRH_LAST_EQ)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LAST_EQ,
    !(srh->first_segment == srhinfo->last_entry)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_LAST_GT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LAST_GT,
    !(srh->first_segment > srhinfo->last_entry)))
   return 0;
 if (srhinfo->mt_flags & IP6T_SRH_LAST_LT)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LAST_LT,
    !(srh->first_segment < srhinfo->last_entry)))
   return 0;





 if (srhinfo->mt_flags & IP6T_SRH_TAG)
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_TAG,
    !(srh->tag == srhinfo->tag)))
   return 0;


 if (srhinfo->mt_flags & IP6T_SRH_PSID) {
  if (srh->segments_left == srh->first_segment)
   return 0;
  psidoff = srhoff + sizeof(struct ipv6_sr_hdr) +
     ((srh->segments_left + 1) * sizeof(struct in6_addr));
  psid = skb_header_pointer(skb, psidoff, sizeof(_psid), &_psid);
  if (!psid)
   return 0;
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_PSID,
    ipv6_masked_addr_cmp(psid, &srhinfo->psid_msk,
           &srhinfo->psid_addr)))
   return 0;
 }


 if (srhinfo->mt_flags & IP6T_SRH_NSID) {
  if (srh->segments_left == 0)
   return 0;
  nsidoff = srhoff + sizeof(struct ipv6_sr_hdr) +
     ((srh->segments_left - 1) * sizeof(struct in6_addr));
  nsid = skb_header_pointer(skb, nsidoff, sizeof(_nsid), &_nsid);
  if (!nsid)
   return 0;
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_NSID,
    ipv6_masked_addr_cmp(nsid, &srhinfo->nsid_msk,
           &srhinfo->nsid_addr)))
   return 0;
 }


 if (srhinfo->mt_flags & IP6T_SRH_LSID) {
  lsidoff = srhoff + sizeof(struct ipv6_sr_hdr);
  lsid = skb_header_pointer(skb, lsidoff, sizeof(_lsid), &_lsid);
  if (!lsid)
   return 0;
  if (NF_SRH_INVF(srhinfo, IP6T_SRH_INV_LSID,
    ipv6_masked_addr_cmp(lsid, &srhinfo->lsid_msk,
           &srhinfo->lsid_addr)))
   return 0;
 }
 return 1;
}
