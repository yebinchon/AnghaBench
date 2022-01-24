#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* dma; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {TYPE_4__* dma; int /*<<< orphan*/  cmd; } ;
struct snd_pmac {scalar_t__ irq; scalar_t__ tx_irq; scalar_t__ rx_irq; int requested; scalar_t__ node; int /*<<< orphan*/  pdev; TYPE_3__* rsrc; TYPE_2__ capture; TYPE_1__ playback; TYPE_4__* awacs; TYPE_4__* latch_base; TYPE_4__* macio_base; int /*<<< orphan*/  extra_dma; int /*<<< orphan*/  (* mixer_free ) (struct snd_pmac*) ;scalar_t__ initialized; } ;
struct TYPE_8__ {int /*<<< orphan*/  control; } ;
struct TYPE_7__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  emergency_dbdma ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pmac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_pmac*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_pmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_pmac*) ; 

__attribute__((used)) static int FUNC14(struct snd_pmac *chip)
{
	/* stop sounds */
	if (chip->initialized) {
		FUNC10(chip);
		/* disable interrupts from awacs interface */
		FUNC5(&chip->awacs->control, FUNC1(&chip->awacs->control) & 0xfff);
	}

	if (chip->node)
		FUNC12(chip, 0);

	/* clean up mixer if any */
	if (chip->mixer_free)
		chip->mixer_free(chip);

	FUNC11(chip);

	/* release resources */
	if (chip->irq >= 0)
		FUNC0(chip->irq, (void*)chip);
	if (chip->tx_irq >= 0)
		FUNC0(chip->tx_irq, (void*)chip);
	if (chip->rx_irq >= 0)
		FUNC0(chip->rx_irq, (void*)chip);
	FUNC9(chip, &chip->playback.cmd);
	FUNC9(chip, &chip->capture.cmd);
	FUNC9(chip, &chip->extra_dma);
	FUNC9(chip, &emergency_dbdma);
	FUNC2(chip->macio_base);
	FUNC2(chip->latch_base);
	FUNC2(chip->awacs);
	FUNC2(chip->playback.dma);
	FUNC2(chip->capture.dma);

	if (chip->node) {
		int i;
		for (i = 0; i < 3; i++) {
			if (chip->requested & (1 << i))
				FUNC7(chip->rsrc[i].start,
						   FUNC8(&chip->rsrc[i]));
		}
	}

	FUNC6(chip->pdev);
	FUNC4(chip->node);
	FUNC3(chip);
	return 0;
}