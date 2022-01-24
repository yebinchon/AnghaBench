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
struct rhashtable_iter {int dummy; } ;
struct netlink_callback {int* args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct rhashtable_iter*) ; 

__attribute__((used)) static int FUNC2(struct netlink_callback *cb)
{
	struct rhashtable_iter *hti = (void *)cb->args[2];

	if (cb->args[0] == 1)
		FUNC1(hti);

	FUNC0(hti);

	return 0;
}