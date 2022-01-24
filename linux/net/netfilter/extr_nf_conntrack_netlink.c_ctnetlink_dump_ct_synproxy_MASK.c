#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conn_synproxy {int /*<<< orphan*/  tsoff; int /*<<< orphan*/  its; int /*<<< orphan*/  isn; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_SYNPROXY ; 
 int /*<<< orphan*/  CTA_SYNPROXY_ISN ; 
 int /*<<< orphan*/  CTA_SYNPROXY_ITS ; 
 int /*<<< orphan*/  CTA_SYNPROXY_TSOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_conn_synproxy* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nf_conn *ct)
{
	struct nf_conn_synproxy *synproxy = FUNC1(ct);
	struct nlattr *nest_parms;

	if (!synproxy)
		return 0;

	nest_parms = FUNC3(skb, CTA_SYNPROXY);
	if (!nest_parms)
		goto nla_put_failure;

	if (FUNC4(skb, CTA_SYNPROXY_ISN, FUNC0(synproxy->isn)) ||
	    FUNC4(skb, CTA_SYNPROXY_ITS, FUNC0(synproxy->its)) ||
	    FUNC4(skb, CTA_SYNPROXY_TSOFF, FUNC0(synproxy->tsoff)))
		goto nla_put_failure;

	FUNC2(skb, nest_parms);

	return 0;

nla_put_failure:
	return -1;
}