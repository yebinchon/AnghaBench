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
struct dsa_switch_tree {int /*<<< orphan*/ ** ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsa_switch_tree*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch_tree*) ; 

__attribute__((used)) static void FUNC2(struct dsa_switch_tree *dst,
				   unsigned int index)
{
	FUNC1(dst);

	dst->ds[index] = NULL;
	FUNC0(dst);
}