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
struct snd_riptide {TYPE_1__* rmidi; int /*<<< orphan*/  handled_irqs; int /*<<< orphan*/  riptide_tq; int /*<<< orphan*/  received_irqs; struct cmdif* cif; } ;
struct cmdif {int /*<<< orphan*/  hwport; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *dev_id)
{
	struct snd_riptide *chip = dev_id;
	struct cmdif *cif = chip->cif;

	if (cif) {
		chip->received_irqs++;
		if (FUNC0(cif->hwport) || FUNC2(cif->hwport) ||
		    FUNC1(cif->hwport)) {
			chip->handled_irqs++;
			FUNC6(&chip->riptide_tq);
		}
		if (chip->rmidi && FUNC3(cif->hwport)) {
			chip->handled_irqs++;
			FUNC5(irq,
						  chip->rmidi->private_data);
		}
		FUNC4(cif->hwport);
	}
	return IRQ_HANDLED;
}