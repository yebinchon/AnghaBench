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
struct nlm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nlm_blocked_lock ; 
 int /*<<< orphan*/  FUNC0 (struct nlm_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nlm_block *block, unsigned long when)
{
	FUNC1(&nlm_blocked_lock);
	FUNC0(block, when);
	FUNC2(&nlm_blocked_lock);
}