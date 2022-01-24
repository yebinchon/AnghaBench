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
struct TYPE_2__ {scalar_t__ area; } ;
struct ensoniq {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_1__ dma_bug; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  ES_1370_SERR_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  SERIAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct ensoniq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ensoniq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ensoniq*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct ensoniq *ensoniq)
{
	FUNC8(ensoniq);
	if (ensoniq->irq < 0)
		goto __hw_end;
#ifdef CHIP1370
	outl(ES_1370_SERR_DISABLE, ES_REG(ensoniq, CONTROL));	/* switch everything off */
	outl(0, ES_REG(ensoniq, SERIAL));	/* clear serial interface */
#else
	FUNC3(0, FUNC0(ensoniq, CONTROL));	/* switch everything off */
	FUNC3(0, FUNC0(ensoniq, SERIAL));	/* clear serial interface */
#endif
	if (ensoniq->irq >= 0)
		FUNC9(ensoniq->irq);
	FUNC6(ensoniq->pci, PCI_D3hot);
      __hw_end:
#ifdef CHIP1370
	if (ensoniq->dma_bug.area)
		snd_dma_free_pages(&ensoniq->dma_bug);
#endif
	if (ensoniq->irq >= 0)
		FUNC1(ensoniq->irq, ensoniq);
	FUNC5(ensoniq->pci);
	FUNC4(ensoniq->pci);
	FUNC2(ensoniq);
	return 0;
}