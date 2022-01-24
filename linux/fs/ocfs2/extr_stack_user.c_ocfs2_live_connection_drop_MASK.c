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
struct ocfs2_live_connection {int /*<<< orphan*/ * oc_conn; int /*<<< orphan*/  oc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_live_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_control_lock ; 

__attribute__((used)) static void FUNC4(struct ocfs2_live_connection *c)
{
	FUNC2(&ocfs2_control_lock);
	FUNC1(&c->oc_list);
	c->oc_conn = NULL;
	FUNC3(&ocfs2_control_lock);

	FUNC0(c);
}