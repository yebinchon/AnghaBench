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
struct tcf_bpf_cfg {int dummy; } ;
struct tc_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_bpf_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tcf_bpf_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tc_action*) ; 

__attribute__((used)) static void FUNC3(struct tc_action *act)
{
	struct tcf_bpf_cfg tmp;

	FUNC1(FUNC2(act), &tmp);
	FUNC0(&tmp);
}