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
struct ring_buffer_per_cpu {int dummy; } ;
struct list_head {scalar_t__ prev; scalar_t__ next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ring_buffer_per_cpu *cpu_buffer,
			 struct list_head *list)
{
	if (FUNC0(cpu_buffer, FUNC1(list->prev) != list->prev))
		return 1;
	if (FUNC0(cpu_buffer, FUNC1(list->next) != list->next))
		return 1;
	return 0;
}