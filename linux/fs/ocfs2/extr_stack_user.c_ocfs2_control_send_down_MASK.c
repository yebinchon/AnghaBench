#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_live_connection {TYPE_1__* oc_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  cc_recovery_data; int /*<<< orphan*/  (* cc_recovery_handler ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ocfs2_live_connection* FUNC3 (char const*) ; 
 int /*<<< orphan*/  ocfs2_control_lock ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *uuid,
				    int nodenum)
{
	struct ocfs2_live_connection *c;

	FUNC1(&ocfs2_control_lock);

	c = FUNC3(uuid);
	if (c) {
		FUNC0(c->oc_conn == NULL);
		c->oc_conn->cc_recovery_handler(nodenum,
						c->oc_conn->cc_recovery_data);
	}

	FUNC2(&ocfs2_control_lock);
}