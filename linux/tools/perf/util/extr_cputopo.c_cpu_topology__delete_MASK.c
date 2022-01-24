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
typedef  size_t u32 ;
struct cpu_topology {size_t core_sib; int die_sib; size_t thread_sib; int /*<<< orphan*/ * thread_siblings; int /*<<< orphan*/ * die_siblings; int /*<<< orphan*/ * core_siblings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_topology*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct cpu_topology *tp)
{
	u32 i;

	if (!tp)
		return;

	for (i = 0 ; i < tp->core_sib; i++)
		FUNC1(&tp->core_siblings[i]);

	if (tp->die_sib) {
		for (i = 0 ; i < tp->die_sib; i++)
			FUNC1(&tp->die_siblings[i]);
	}

	for (i = 0 ; i < tp->thread_sib; i++)
		FUNC1(&tp->thread_siblings[i]);

	FUNC0(tp);
}