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
struct cs5535audio {scalar_t__ irq; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct cs5535audio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs5535audio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct cs5535audio *cs5535au)
{
	FUNC5(cs5535au->irq);
	FUNC4(cs5535au->pci, PCI_D3hot);

	if (cs5535au->irq >= 0)
		FUNC0(cs5535au->irq, cs5535au);

	FUNC3(cs5535au->pci);
	FUNC2(cs5535au->pci);
	FUNC1(cs5535au);
	return 0;
}