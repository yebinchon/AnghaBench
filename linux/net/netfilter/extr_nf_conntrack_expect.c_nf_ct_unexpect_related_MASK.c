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
struct nf_conntrack_expect {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nf_conntrack_expect_lock ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nf_conntrack_expect *exp)
{
	FUNC1(&nf_conntrack_expect_lock);
	FUNC0(exp);
	FUNC2(&nf_conntrack_expect_lock);
}