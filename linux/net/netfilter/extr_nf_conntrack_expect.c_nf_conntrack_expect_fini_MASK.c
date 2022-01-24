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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_ct_expect_cachep ; 
 int /*<<< orphan*/  nf_ct_expect_hash ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	FUNC2(); /* Wait for call_rcu() before destroy */
	FUNC0(nf_ct_expect_cachep);
	FUNC1(nf_ct_expect_hash);
}