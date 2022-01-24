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
typedef  int /*<<< orphan*/  swp_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC1(const void *ent1, const void *ent2)
{
	const swp_entry_t *e1 = ent1, *e2 = ent2;

	return (int)FUNC0(*e1) - (int)FUNC0(*e2);
}