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
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int,int /*<<< orphan*/  const*) ; 

int FUNC2(int node, const nodemask_t *srcp)
{
	int ret = FUNC1(node, srcp);

	if (ret == MAX_NUMNODES)
		ret = FUNC0(srcp);
	return ret;
}