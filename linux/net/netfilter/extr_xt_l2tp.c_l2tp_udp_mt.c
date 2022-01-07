
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union l2tp_val {int * val16; int val32; } ;
typedef int u8 ;
typedef void* u32 ;
typedef int u16 ;
struct xt_l2tp_info {int dummy; } ;
struct xt_action_param {scalar_t__ fragoff; struct xt_l2tp_info* matchinfo; } ;
struct udphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2tp_data {scalar_t__ type; int version; void* sid; void* tid; int member_0; } ;


 int L2TP_HDR_L_BIT ;
 int L2TP_HDR_T_BIT ;
 int L2TP_HDR_VER ;
 scalar_t__ XT_L2TP_TYPE_CONTROL ;
 scalar_t__ XT_L2TP_TYPE_DATA ;
 int l2tp_match (struct xt_l2tp_info const*,struct l2tp_data*) ;
 void* ntohl (int ) ;
 int ntohs (int ) ;
 union l2tp_val* skb_header_pointer (struct sk_buff const*,int,int,union l2tp_val*) ;

__attribute__((used)) static bool l2tp_udp_mt(const struct sk_buff *skb, struct xt_action_param *par, u16 thoff)
{
 const struct xt_l2tp_info *info = par->matchinfo;
 int uhlen = sizeof(struct udphdr);
 int offs = thoff + uhlen;
 union l2tp_val *lh;
 union l2tp_val lhbuf;
 u16 flags;
 struct l2tp_data data = { 0, };

 if (par->fragoff != 0)
  return 0;




 lh = skb_header_pointer(skb, offs, 2, &lhbuf);
 if (lh == ((void*)0))
  return 0;

 flags = ntohs(lh->val16[0]);
 if (flags & L2TP_HDR_T_BIT)
  data.type = XT_L2TP_TYPE_CONTROL;
 else
  data.type = XT_L2TP_TYPE_DATA;
 data.version = (u8) flags & L2TP_HDR_VER;







 if (data.version == 3) {
  lh = skb_header_pointer(skb, offs + 4, 4, &lhbuf);
  if (lh == ((void*)0))
   return 0;
  if (data.type == XT_L2TP_TYPE_CONTROL)
   data.tid = ntohl(lh->val32);
  else
   data.sid = ntohl(lh->val32);
 } else if (data.version == 2) {
  if (flags & L2TP_HDR_L_BIT)
   offs += 2;
  lh = skb_header_pointer(skb, offs + 2, 4, &lhbuf);
  if (lh == ((void*)0))
   return 0;
  data.tid = (u32) ntohs(lh->val16[0]);
  data.sid = (u32) ntohs(lh->val16[1]);
 } else
  return 0;

 return l2tp_match(info, &data);
}
