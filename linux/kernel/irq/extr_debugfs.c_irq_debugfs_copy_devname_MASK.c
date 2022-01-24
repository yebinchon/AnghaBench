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
struct irq_desc {int /*<<< orphan*/  dev_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (struct device*) ; 
 struct irq_desc* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

void FUNC3(int irq, struct device *dev)
{
	struct irq_desc *desc = FUNC1(irq);
	const char *name = FUNC0(dev);

	if (name)
		desc->dev_name = FUNC2(name, GFP_KERNEL);
}