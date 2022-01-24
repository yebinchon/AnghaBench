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
struct TYPE_2__ {int /*<<< orphan*/  ip; } ;
struct xt_tproxy_target_info_v1 {int /*<<< orphan*/  mark_value; int /*<<< orphan*/  mark_mask; int /*<<< orphan*/  lport; TYPE_1__ laddr; } ;
struct xt_action_param {struct xt_tproxy_target_info_v1* targinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC2(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct xt_tproxy_target_info_v1 *tgi = par->targinfo;

	return FUNC0(FUNC1(par), skb, tgi->laddr.ip, tgi->lport,
			  tgi->mark_mask, tgi->mark_value);
}