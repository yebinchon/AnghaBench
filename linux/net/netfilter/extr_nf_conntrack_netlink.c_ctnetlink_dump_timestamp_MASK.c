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
struct nf_conn_tstamp {scalar_t__ start; scalar_t__ stop; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_TIMESTAMP ; 
 int /*<<< orphan*/  CTA_TIMESTAMP_PAD ; 
 int /*<<< orphan*/  CTA_TIMESTAMP_START ; 
 int /*<<< orphan*/  CTA_TIMESTAMP_STOP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct nf_conn_tstamp* FUNC1 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, const struct nf_conn *ct)
{
	struct nlattr *nest_count;
	const struct nf_conn_tstamp *tstamp;

	tstamp = FUNC1(ct);
	if (!tstamp)
		return 0;

	nest_count = FUNC3(skb, CTA_TIMESTAMP);
	if (!nest_count)
		goto nla_put_failure;

	if (FUNC4(skb, CTA_TIMESTAMP_START, FUNC0(tstamp->start),
			 CTA_TIMESTAMP_PAD) ||
	    (tstamp->stop != 0 && FUNC4(skb, CTA_TIMESTAMP_STOP,
					       FUNC0(tstamp->stop),
					       CTA_TIMESTAMP_PAD)))
		goto nla_put_failure;
	FUNC2(skb, nest_count);

	return 0;

nla_put_failure:
	return -1;
}