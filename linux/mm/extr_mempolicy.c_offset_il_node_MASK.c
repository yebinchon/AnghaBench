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
struct TYPE_2__ {int /*<<< orphan*/  nodes; } ;
struct mempolicy {TYPE_1__ v; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static unsigned FUNC4(struct mempolicy *pol, unsigned long n)
{
	unsigned nnodes = FUNC2(pol->v.nodes);
	unsigned target;
	int i;
	int nid;

	if (!nnodes)
		return FUNC3();
	target = (unsigned int)n % nnodes;
	nid = FUNC0(pol->v.nodes);
	for (i = 0; i < target; i++)
		nid = FUNC1(nid, pol->v.nodes);
	return nid;
}