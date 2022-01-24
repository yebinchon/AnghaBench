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
struct pcpu_freelist_node {struct pcpu_freelist_node* next; } ;
struct pcpu_freelist_head {int /*<<< orphan*/  lock; struct pcpu_freelist_node* first; } ;
struct pcpu_freelist {int /*<<< orphan*/  freelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_possible_mask ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 struct pcpu_freelist_head* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct pcpu_freelist_node *FUNC5(struct pcpu_freelist *s)
{
	struct pcpu_freelist_head *head;
	struct pcpu_freelist_node *node;
	int orig_cpu, cpu;

	orig_cpu = cpu = FUNC2();
	while (1) {
		head = FUNC1(s->freelist, cpu);
		FUNC3(&head->lock);
		node = head->first;
		if (node) {
			head->first = node->next;
			FUNC4(&head->lock);
			return node;
		}
		FUNC4(&head->lock);
		cpu = FUNC0(cpu, cpu_possible_mask);
		if (cpu >= nr_cpu_ids)
			cpu = 0;
		if (cpu == orig_cpu)
			return NULL;
	}
}