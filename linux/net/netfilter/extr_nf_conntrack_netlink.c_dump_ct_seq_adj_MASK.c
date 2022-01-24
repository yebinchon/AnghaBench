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
struct nf_ct_seqadj {int /*<<< orphan*/  offset_after; int /*<<< orphan*/  offset_before; int /*<<< orphan*/  correction_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_SEQADJ_CORRECTION_POS ; 
 int /*<<< orphan*/  CTA_SEQADJ_OFFSET_AFTER ; 
 int /*<<< orphan*/  CTA_SEQADJ_OFFSET_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sk_buff *skb, const struct nf_ct_seqadj *seq, int type)
{
	struct nlattr *nest_parms;

	nest_parms = FUNC2(skb, type);
	if (!nest_parms)
		goto nla_put_failure;

	if (FUNC3(skb, CTA_SEQADJ_CORRECTION_POS,
			 FUNC0(seq->correction_pos)) ||
	    FUNC3(skb, CTA_SEQADJ_OFFSET_BEFORE,
			 FUNC0(seq->offset_before)) ||
	    FUNC3(skb, CTA_SEQADJ_OFFSET_AFTER,
			 FUNC0(seq->offset_after)))
		goto nla_put_failure;

	FUNC1(skb, nest_parms);

	return 0;

nla_put_failure:
	return -1;
}