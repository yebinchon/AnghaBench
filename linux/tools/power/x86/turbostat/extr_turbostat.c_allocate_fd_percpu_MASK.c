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
struct TYPE_2__ {scalar_t__ max_cpu_num; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/ * fd_percpu ; 
 TYPE_1__ topo ; 

void FUNC2(void)
{
	fd_percpu = FUNC0(topo.max_cpu_num + 1, sizeof(int));
	if (fd_percpu == NULL)
		FUNC1(-1, "calloc fd_percpu");
}