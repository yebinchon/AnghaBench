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
struct irq_matrix {scalar_t__ global_reserved; scalar_t__ global_available; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_matrix*) ; 

void FUNC2(struct irq_matrix *m)
{
	if (m->global_reserved <= m->global_available &&
	    m->global_reserved + 1 > m->global_available)
		FUNC0("Interrupt reservation exceeds available resources\n");

	m->global_reserved++;
	FUNC1(m);
}