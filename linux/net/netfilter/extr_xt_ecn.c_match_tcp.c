
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_ecn_info {int operation; int invert; } ;
struct xt_action_param {int thoff; struct xt_ecn_info* matchinfo; } ;
struct tcphdr {int ece; int cwr; } ;
struct sk_buff {int dummy; } ;
typedef int _tcph ;


 int XT_ECN_OP_MATCH_CWR ;
 int XT_ECN_OP_MATCH_ECE ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct tcphdr*) ;

__attribute__((used)) static bool match_tcp(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_ecn_info *einfo = par->matchinfo;
 struct tcphdr _tcph;
 const struct tcphdr *th;




 th = skb_header_pointer(skb, par->thoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return 0;

 if (einfo->operation & XT_ECN_OP_MATCH_ECE) {
  if (einfo->invert & XT_ECN_OP_MATCH_ECE) {
   if (th->ece == 1)
    return 0;
  } else {
   if (th->ece == 0)
    return 0;
  }
 }

 if (einfo->operation & XT_ECN_OP_MATCH_CWR) {
  if (einfo->invert & XT_ECN_OP_MATCH_CWR) {
   if (th->cwr == 1)
    return 0;
  } else {
   if (th->cwr == 0)
    return 0;
  }
 }

 return 1;
}
