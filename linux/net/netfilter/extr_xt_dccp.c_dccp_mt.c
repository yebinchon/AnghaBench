
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_dccp_info {scalar_t__* spts; scalar_t__* dpts; int invflags; int flags; int option; int typemask; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct xt_dccp_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;
typedef int _dh ;


 scalar_t__ DCCHECK (int,int ,int ,int ) ;
 int XT_DCCP_DEST_PORTS ;
 int XT_DCCP_OPTION ;
 int XT_DCCP_SRC_PORTS ;
 int XT_DCCP_TYPE ;
 int match_option (int ,struct sk_buff const*,int ,struct dccp_hdr const*,int*) ;
 int match_types (struct dccp_hdr const*,int ) ;
 scalar_t__ ntohs (int ) ;
 struct dccp_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct dccp_hdr*) ;

__attribute__((used)) static bool
dccp_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_dccp_info *info = par->matchinfo;
 const struct dccp_hdr *dh;
 struct dccp_hdr _dh;

 if (par->fragoff != 0)
  return 0;

 dh = skb_header_pointer(skb, par->thoff, sizeof(_dh), &_dh);
 if (dh == ((void*)0)) {
  par->hotdrop = 1;
  return 0;
 }

 return DCCHECK(ntohs(dh->dccph_sport) >= info->spts[0]
   && ntohs(dh->dccph_sport) <= info->spts[1],
   XT_DCCP_SRC_PORTS, info->flags, info->invflags)
  && DCCHECK(ntohs(dh->dccph_dport) >= info->dpts[0]
   && ntohs(dh->dccph_dport) <= info->dpts[1],
   XT_DCCP_DEST_PORTS, info->flags, info->invflags)
  && DCCHECK(match_types(dh, info->typemask),
      XT_DCCP_TYPE, info->flags, info->invflags)
  && DCCHECK(match_option(info->option, skb, par->thoff, dh,
     &par->hotdrop),
      XT_DCCP_OPTION, info->flags, info->invflags);
}
