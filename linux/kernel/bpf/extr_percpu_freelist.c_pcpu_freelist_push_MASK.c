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
struct pcpu_freelist_node {int dummy; } ;
struct pcpu_freelist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcpu_freelist*,struct pcpu_freelist_node*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct pcpu_freelist *s,
			struct pcpu_freelist_node *node)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC0(s, node);
	FUNC1(flags);
}