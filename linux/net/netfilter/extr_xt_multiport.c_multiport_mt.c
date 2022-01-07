
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_multiport_v1 {int dummy; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int thoff; struct xt_multiport_v1* matchinfo; } ;
struct sk_buff {int dummy; } ;
typedef int _ports ;
typedef int __be16 ;


 int ntohs (int const) ;
 int ports_match_v1 (struct xt_multiport_v1 const*,int ,int ) ;
 int pr_debug (char*) ;
 int * skb_header_pointer (struct sk_buff const*,int ,int,int *) ;

__attribute__((used)) static bool
multiport_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const __be16 *pptr;
 __be16 _ports[2];
 const struct xt_multiport_v1 *multiinfo = par->matchinfo;

 if (par->fragoff != 0)
  return 0;

 pptr = skb_header_pointer(skb, par->thoff, sizeof(_ports), _ports);
 if (pptr == ((void*)0)) {



  pr_debug("Dropping evil offset=0 tinygram.\n");
  par->hotdrop = 1;
  return 0;
 }

 return ports_match_v1(multiinfo, ntohs(pptr[0]), ntohs(pptr[1]));
}
