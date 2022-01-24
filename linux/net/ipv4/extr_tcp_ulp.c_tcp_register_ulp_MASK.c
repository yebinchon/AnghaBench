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
struct tcp_ulp_ops {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_ulp_list ; 
 int /*<<< orphan*/  tcp_ulp_list_lock ; 

int FUNC4(struct tcp_ulp_ops *ulp)
{
	int ret = 0;

	FUNC1(&tcp_ulp_list_lock);
	if (FUNC3(ulp->name))
		ret = -EEXIST;
	else
		FUNC0(&ulp->list, &tcp_ulp_list);
	FUNC2(&tcp_ulp_list_lock);

	return ret;
}