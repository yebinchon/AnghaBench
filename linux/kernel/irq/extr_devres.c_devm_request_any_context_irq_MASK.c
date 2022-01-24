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
struct irq_devres {unsigned int irq; void* dev_id; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  devm_irq_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct irq_devres*) ; 
 struct irq_devres* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_devres*) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned long,char const*,void*) ; 

int FUNC5(struct device *dev, unsigned int irq,
			      irq_handler_t handler, unsigned long irqflags,
			      const char *devname, void *dev_id)
{
	struct irq_devres *dr;
	int rc;

	dr = FUNC2(devm_irq_release, sizeof(struct irq_devres),
			  GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	if (!devname)
		devname = FUNC0(dev);

	rc = FUNC4(irq, handler, irqflags, devname, dev_id);
	if (rc < 0) {
		FUNC3(dr);
		return rc;
	}

	dr->irq = irq;
	dr->dev_id = dev_id;
	FUNC1(dev, dr);

	return rc;
}