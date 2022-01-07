
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct tc_rsvp_pinfo {scalar_t__ pad; int tunnelhdr; int tunnelid; int protocol; int spi; int dpi; } ;
struct sk_buff {int len; } ;
struct rsvp_session {int tunnelid; int protocol; int dpi; struct tc_rsvp_pinfo dst; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct rsvp_filter {int handle; int exts; struct tc_rsvp_pinfo* src; TYPE_1__ res; int tunnelhdr; int spi; struct rsvp_session* sess; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
typedef int pinfo ;


 int TCA_OPTIONS ;
 int TCA_RSVP_CLASSID ;
 int TCA_RSVP_DST ;
 int TCA_RSVP_PINFO ;
 int TCA_RSVP_SRC ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_rsvp_pinfo*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *) ;

__attribute__((used)) static int rsvp_dump(struct net *net, struct tcf_proto *tp, void *fh,
       struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
 struct rsvp_filter *f = fh;
 struct rsvp_session *s;
 struct nlattr *nest;
 struct tc_rsvp_pinfo pinfo;

 if (f == ((void*)0))
  return skb->len;
 s = f->sess;

 t->tcm_handle = f->handle;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (nla_put(skb, TCA_RSVP_DST, sizeof(s->dst), &s->dst))
  goto nla_put_failure;
 pinfo.dpi = s->dpi;
 pinfo.spi = f->spi;
 pinfo.protocol = s->protocol;
 pinfo.tunnelid = s->tunnelid;
 pinfo.tunnelhdr = f->tunnelhdr;
 pinfo.pad = 0;
 if (nla_put(skb, TCA_RSVP_PINFO, sizeof(pinfo), &pinfo))
  goto nla_put_failure;
 if (f->res.classid &&
     nla_put_u32(skb, TCA_RSVP_CLASSID, f->res.classid))
  goto nla_put_failure;
 if (((f->handle >> 8) & 0xFF) != 16 &&
     nla_put(skb, TCA_RSVP_SRC, sizeof(f->src), f->src))
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
