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
struct uniphier_aio_sub {scalar_t__ cstream; scalar_t__ substream; int /*<<< orphan*/  running; } ;
struct uniphier_aio_chip {int num_aios; struct uniphier_aio* aios; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC3 (struct uniphier_aio_sub*) ; 
 struct uniphier_aio_chip* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct platform_device *pdev = p;
	struct uniphier_aio_chip *chip = FUNC4(pdev);
	irqreturn_t ret = IRQ_NONE;
	int i, j;

	for (i = 0; i < chip->num_aios; i++) {
		struct uniphier_aio *aio = &chip->aios[i];

		for (j = 0; j < FUNC0(aio->sub); j++) {
			struct uniphier_aio_sub *sub = &aio->sub[j];

			/* Skip channel that does not trigger */
			if (!sub->running || !FUNC3(sub))
				continue;

			if (sub->substream)
				FUNC2(sub);
			if (sub->cstream)
				FUNC1(sub);

			ret = IRQ_HANDLED;
		}
	}

	return ret;
}