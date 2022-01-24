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
struct lx6464es {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  port_plx_remapped; int /*<<< orphan*/  port_dsp_bar; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC5 (struct lx6464es*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct lx6464es *chip)
{
	FUNC0(chip->card->dev, "->snd_lx6464es_free\n");

	FUNC5(chip);

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);

	FUNC3(chip->port_dsp_bar);
	FUNC2(chip->port_plx_remapped);

	FUNC7(chip->pci);
	FUNC6(chip->pci);

	FUNC4(chip);

	return 0;
}