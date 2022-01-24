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
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct hw {scalar_t__ model; void* io_base; int /*<<< orphan*/  irq; TYPE_1__* card; struct pci_dev* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 scalar_t__ CTUAA ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  ct_20k1_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,char*) ; 
 void* FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int FUNC11 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC12(struct hw *hw)
{
	int err;
	struct pci_dev *pci = hw->pci;
	const unsigned int dma_bits = BITS_PER_LONG;

	err = FUNC5(pci);
	if (err < 0)
		return err;

	/* Set DMA transfer mask */
	if (!FUNC3(&pci->dev, FUNC0(dma_bits))) {
		FUNC2(&pci->dev, FUNC0(dma_bits));
	} else {
		FUNC3(&pci->dev, FUNC0(32));
		FUNC2(&pci->dev, FUNC0(32));
	}

	if (!hw->io_base) {
		err = FUNC7(pci, "XFi");
		if (err < 0)
			goto error1;

		if (hw->model == CTUAA)
			hw->io_base = FUNC8(pci, 5);
		else
			hw->io_base = FUNC8(pci, 0);

	}

	/* Switch to X-Fi mode from UAA mode if neeeded */
	if (hw->model == CTUAA) {
		err = FUNC11(pci);
		if (err)
			goto error2;

	}

	if (hw->irq < 0) {
		err = FUNC10(pci->irq, ct_20k1_interrupt, IRQF_SHARED,
				  KBUILD_MODNAME, hw);
		if (err < 0) {
			FUNC1(hw->card->dev,
				"XFi: Cannot get irq %d\n", pci->irq);
			goto error2;
		}
		hw->irq = pci->irq;
	}

	FUNC9(pci);

	return 0;

error2:
	FUNC6(pci);
	hw->io_base = 0;
error1:
	FUNC4(pci);
	return err;
}