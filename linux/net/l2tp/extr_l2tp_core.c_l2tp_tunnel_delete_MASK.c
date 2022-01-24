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
struct l2tp_tunnel {int /*<<< orphan*/  del_work; int /*<<< orphan*/  dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  l2tp_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct l2tp_tunnel *tunnel)
{
	if (!FUNC2(0, &tunnel->dead)) {
		FUNC0(tunnel);
		FUNC1(l2tp_wq, &tunnel->del_work);
	}
}