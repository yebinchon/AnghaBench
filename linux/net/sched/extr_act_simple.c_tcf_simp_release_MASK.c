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
struct tcf_defact {int /*<<< orphan*/  tcfd_defdata; } ;
struct tc_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tcf_defact* FUNC1 (struct tc_action*) ; 

__attribute__((used)) static void FUNC2(struct tc_action *a)
{
	struct tcf_defact *d = FUNC1(a);
	FUNC0(d->tcfd_defdata);
}