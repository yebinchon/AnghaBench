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
struct cs4281 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  ba1; int /*<<< orphan*/  ba0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_CLKCR1 ; 
 int /*<<< orphan*/  BA0_HIMR ; 
 int /*<<< orphan*/  BA0_SSPM ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct cs4281*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cs4281*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4281*) ; 
 int /*<<< orphan*/  FUNC7 (struct cs4281*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct cs4281 *chip)
{
	FUNC6(chip);

	if (chip->irq >= 0)
		FUNC8(chip->irq);

	/* Mask interrupts */
	FUNC7(chip, BA0_HIMR, 0x7fffffff);
	/* Stop the DLL Clock logic. */
	FUNC7(chip, BA0_CLKCR1, 0);
	/* Sound System Power Management - Turn Everything OFF */
	FUNC7(chip, BA0_SSPM, 0);
	/* PCI interface - D3 state */
	FUNC5(chip->pci, PCI_D3hot);

	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC1(chip->ba0);
	FUNC1(chip->ba1);
	FUNC4(chip->pci);
	FUNC3(chip->pci);

	FUNC2(chip);
	return 0;
}