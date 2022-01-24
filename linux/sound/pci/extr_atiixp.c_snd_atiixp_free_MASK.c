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
struct atiixp {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  remap_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct atiixp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atiixp*) ; 

__attribute__((used)) static int FUNC6(struct atiixp *chip)
{
	if (chip->irq < 0)
		goto __hw_end;
	FUNC5(chip);

      __hw_end:
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC1(chip->remap_addr);
	FUNC4(chip->pci);
	FUNC3(chip->pci);
	FUNC2(chip);
	return 0;
}