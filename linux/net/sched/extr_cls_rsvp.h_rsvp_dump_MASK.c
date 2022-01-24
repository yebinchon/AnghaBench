#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct tc_rsvp_pinfo {scalar_t__ pad; int /*<<< orphan*/  tunnelhdr; int /*<<< orphan*/  tunnelid; int /*<<< orphan*/  protocol; int /*<<< orphan*/  spi; int /*<<< orphan*/  dpi; } ;
struct sk_buff {int len; } ;
struct rsvp_session {int /*<<< orphan*/  tunnelid; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dpi; struct tc_rsvp_pinfo dst; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct rsvp_filter {int handle; int /*<<< orphan*/  exts; struct tc_rsvp_pinfo* src; TYPE_1__ res; int /*<<< orphan*/  tunnelhdr; int /*<<< orphan*/  spi; struct rsvp_session* sess; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  pinfo ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_RSVP_CLASSID ; 
 int /*<<< orphan*/  TCA_RSVP_DST ; 
 int /*<<< orphan*/  TCA_RSVP_PINFO ; 
 int /*<<< orphan*/  TCA_RSVP_SRC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_rsvp_pinfo*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct tcf_proto *tp, void *fh,
		     struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
	struct rsvp_filter *f = fh;
	struct rsvp_session *s;
	struct nlattr *nest;
	struct tc_rsvp_pinfo pinfo;

	if (f == NULL)
		return skb->len;
	s = f->sess;

	t->tcm_handle = f->handle;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC3(skb, TCA_RSVP_DST, sizeof(s->dst), &s->dst))
		goto nla_put_failure;
	pinfo.dpi = s->dpi;
	pinfo.spi = f->spi;
	pinfo.protocol = s->protocol;
	pinfo.tunnelid = s->tunnelid;
	pinfo.tunnelhdr = f->tunnelhdr;
	pinfo.pad = 0;
	if (FUNC3(skb, TCA_RSVP_PINFO, sizeof(pinfo), &pinfo))
		goto nla_put_failure;
	if (f->res.classid &&
	    FUNC4(skb, TCA_RSVP_CLASSID, f->res.classid))
		goto nla_put_failure;
	if (((f->handle >> 8) & 0xFF) != 16 &&
	    FUNC3(skb, TCA_RSVP_SRC, sizeof(f->src), f->src))
		goto nla_put_failure;

	if (FUNC5(skb, &f->exts) < 0)
		goto nla_put_failure;

	FUNC1(skb, nest);

	if (FUNC6(skb, &f->exts) < 0)
		goto nla_put_failure;
	return skb->len;

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}