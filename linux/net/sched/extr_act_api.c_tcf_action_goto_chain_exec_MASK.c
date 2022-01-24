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
struct tcf_result {void* goto_tp; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain; } ;
struct tc_action {int /*<<< orphan*/  goto_chain; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const struct tc_action *a,
				       struct tcf_result *res)
{
	const struct tcf_chain *chain = FUNC0(a->goto_chain);

	res->goto_tp = FUNC0(chain->filter_chain);
}