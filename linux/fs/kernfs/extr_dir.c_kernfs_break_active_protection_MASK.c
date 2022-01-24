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
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kernfs_node*) ; 

void FUNC1(struct kernfs_node *kn)
{
	/*
	 * Take out ourself out of the active ref dependency chain.  If
	 * we're called without an active ref, lockdep will complain.
	 */
	FUNC0(kn);
}