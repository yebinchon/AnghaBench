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
struct xt_action_param {int /*<<< orphan*/  matchinfo; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nf_osf_fingers ; 
 int FUNC0 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC4 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC6(const struct sk_buff *skb, struct xt_action_param *p)
{
	return FUNC0(skb, FUNC1(p), FUNC2(p), FUNC3(p),
			    FUNC5(p), p->matchinfo, FUNC4(p), nf_osf_fingers);
}