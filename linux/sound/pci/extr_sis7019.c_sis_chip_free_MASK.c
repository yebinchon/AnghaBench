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
struct sis7019 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  ioaddr; scalar_t__ ioport; } ;

/* Variables and functions */
 scalar_t__ SIS_GCR ; 
 int /*<<< orphan*/  SIS_GCR_SOFTWARE_RESET ; 
 scalar_t__ SIS_GIER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct sis7019*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sis7019*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sis7019 *sis)
{
	/* Reset the chip, and disable all interrputs.
	 */
	FUNC2(SIS_GCR_SOFTWARE_RESET, sis->ioport + SIS_GCR);
	FUNC6(25);
	FUNC2(0, sis->ioport + SIS_GCR);
	FUNC2(0, sis->ioport + SIS_GIER);

	/* Now, free everything we allocated.
	 */
	if (sis->irq >= 0)
		FUNC0(sis->irq, sis);

	FUNC1(sis->ioaddr);
	FUNC4(sis->pci);
	FUNC3(sis->pci);
	FUNC5(sis);
	return 0;
}