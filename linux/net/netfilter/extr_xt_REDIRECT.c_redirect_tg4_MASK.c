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
struct xt_action_param {int /*<<< orphan*/  targinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC2(struct sk_buff *skb, const struct xt_action_param *par)
{
	return FUNC0(skb, par->targinfo, FUNC1(par));
}