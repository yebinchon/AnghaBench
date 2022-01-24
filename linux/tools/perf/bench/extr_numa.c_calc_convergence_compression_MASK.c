#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nr_proc; } ;
struct TYPE_4__ {TYPE_1__ p; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 TYPE_2__* g ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(int *strong)
{
	unsigned int nodes_min, nodes_max;
	int p;

	nodes_min = -1;
	nodes_max =  0;

	for (p = 0; p < g->p.nr_proc; p++) {
		unsigned int nodes = FUNC0(p);

		if (!nodes) {
			*strong = 0;
			return;
		}

		nodes_min = FUNC2(nodes, nodes_min);
		nodes_max = FUNC1(nodes, nodes_max);
	}

	/* Strong convergence: all threads compress on a single node: */
	if (nodes_min == 1 && nodes_max == 1) {
		*strong = 1;
	} else {
		*strong = 0;
		FUNC3(" {%d-%d}", nodes_min, nodes_max);
	}
}