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
struct mtk_base_afe {int irqs_size; int /*<<< orphan*/  irq_alloc_lock; TYPE_1__* irqs; } ;
struct TYPE_2__ {scalar_t__ irq_occupyed; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct mtk_base_afe *afe, int irq_id)
{
	FUNC0(&afe->irq_alloc_lock);
	if (irq_id >= 0 && irq_id < afe->irqs_size) {
		afe->irqs[irq_id].irq_occupyed = 0;
		FUNC1(&afe->irq_alloc_lock);
		return 0;
	}
	FUNC1(&afe->irq_alloc_lock);
	return -EINVAL;
}