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
struct tcf_pedit {struct tc_pedit_key* tcfp_keys_ex; struct tc_pedit_key* tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tc_pedit_key*) ; 
 struct tcf_pedit* FUNC1 (struct tc_action*) ; 

__attribute__((used)) static void FUNC2(struct tc_action *a)
{
	struct tcf_pedit *p = FUNC1(a);
	struct tc_pedit_key *keys = p->tcfp_keys;

	FUNC0(keys);
	FUNC0(p->tcfp_keys_ex);
}