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
struct nfnetlink_subsystem {size_t subsys_id; } ;
struct TYPE_2__ {int /*<<< orphan*/ * subsys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* table ; 

int FUNC3(const struct nfnetlink_subsystem *n)
{
	FUNC0(n->subsys_id);
	table[n->subsys_id].subsys = NULL;
	FUNC1(n->subsys_id);
	FUNC2();
	return 0;
}