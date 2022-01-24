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
struct hw {scalar_t__ io_base; int /*<<< orphan*/  irq; TYPE_1__* card; int /*<<< orphan*/  mem_base; struct pci_dev* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 int ENOENT ; 
 int /*<<< orphan*/  GCTL_UAA ; 
 int /*<<< orphan*/  GLOBAL_CNTL_GCTL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  ct_20k2_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int) ; 
 scalar_t__ FUNC12 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct hw *hw)
{
	int err = 0;
	struct pci_dev *pci = hw->pci;
	unsigned int gctl;
	const unsigned int dma_bits = BITS_PER_LONG;

	err = FUNC8(pci);
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
		err = FUNC10(pci, "XFi");
		if (err < 0)
			goto error1;

		hw->io_base = FUNC12(hw->pci, 2);
		hw->mem_base = FUNC6(hw->io_base,
				       FUNC11(hw->pci, 2));
		if (!hw->mem_base) {
			err = -ENOENT;
			goto error2;
		}
	}

	/* Switch to 20k2 mode from UAA mode. */
	gctl = FUNC4(hw, GLOBAL_CNTL_GCTL);
	FUNC15(&gctl, GCTL_UAA, 0);
	FUNC5(hw, GLOBAL_CNTL_GCTL, gctl);

	if (hw->irq < 0) {
		err = FUNC14(pci->irq, ct_20k2_interrupt, IRQF_SHARED,
				  KBUILD_MODNAME, hw);
		if (err < 0) {
			FUNC1(hw->card->dev,
				"XFi: Cannot get irq %d\n", pci->irq);
			goto error2;
		}
		hw->irq = pci->irq;
	}

	FUNC13(pci);

	return 0;

/*error3:
	iounmap((void *)hw->mem_base);
	hw->mem_base = (unsigned long)NULL;*/
error2:
	FUNC9(pci);
	hw->io_base = 0;
error1:
	FUNC7(pci);
	return err;
}