
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int classid; } ;
struct route4_filter {int handle; int id; int iif; int exts; TYPE_1__ res; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int TCA_OPTIONS ;
 int TCA_ROUTE4_CLASSID ;
 int TCA_ROUTE4_FROM ;
 int TCA_ROUTE4_IIF ;
 int TCA_ROUTE4_TO ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *) ;

__attribute__((used)) static int route4_dump(struct net *net, struct tcf_proto *tp, void *fh,
         struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
 struct route4_filter *f = fh;
 struct nlattr *nest;
 u32 id;

 if (f == ((void*)0))
  return skb->len;

 t->tcm_handle = f->handle;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (!(f->handle & 0x8000)) {
  id = f->id & 0xFF;
  if (nla_put_u32(skb, TCA_ROUTE4_TO, id))
   goto nla_put_failure;
 }
 if (f->handle & 0x80000000) {
  if ((f->handle >> 16) != 0xFFFF &&
      nla_put_u32(skb, TCA_ROUTE4_IIF, f->iif))
   goto nla_put_failure;
 } else {
  id = f->id >> 16;
  if (nla_put_u32(skb, TCA_ROUTE4_FROM, id))
   goto nla_put_failure;
 }
 if (f->res.classid &&
     nla_put_u32(skb, TCA_ROUTE4_CLASSID, f->res.classid))
  goto nla_put_failure;

 if (tcf_exts_dump(skb, &f->exts) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &f->exts) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
