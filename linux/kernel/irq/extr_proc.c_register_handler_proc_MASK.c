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
struct irqaction {char* name; scalar_t__ dir; } ;
struct irq_desc {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int MAX_NAMELEN ; 
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irqaction*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

void FUNC4(unsigned int irq, struct irqaction *action)
{
	char name [MAX_NAMELEN];
	struct irq_desc *desc = FUNC0(irq);

	if (!desc->dir || action->dir || !action->name ||
					!FUNC1(irq, action))
		return;

	FUNC3(name, MAX_NAMELEN, "%s", action->name);

	/* create /proc/irq/1234/handler/ */
	action->dir = FUNC2(name, desc->dir);
}