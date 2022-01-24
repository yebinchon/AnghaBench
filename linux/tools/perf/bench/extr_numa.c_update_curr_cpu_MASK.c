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
struct TYPE_4__ {TYPE_1__* threads; } ;
struct TYPE_3__ {unsigned int curr_cpu; } ;

/* Variables and functions */
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC1 () ; 

__attribute__((used)) static void FUNC2(int task_nr, unsigned long bytes_worked)
{
	unsigned int cpu;

	cpu = FUNC1();

	g->threads[task_nr].curr_cpu = cpu;
	FUNC0(0, bytes_worked);
}