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
struct sonicvibes {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  res_dmac; int /*<<< orphan*/  res_dmaa; int /*<<< orphan*/  dmac_port; int /*<<< orphan*/  dmaa_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct sonicvibes*) ; 
 int /*<<< orphan*/  FUNC1 (struct sonicvibes*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sonicvibes*) ; 

__attribute__((used)) static int FUNC7(struct sonicvibes *sonic)
{
	FUNC6(sonic);
	FUNC4(sonic->pci, 0x40, sonic->dmaa_port);
	FUNC4(sonic->pci, 0x48, sonic->dmac_port);
	if (sonic->irq >= 0)
		FUNC0(sonic->irq, sonic);
	FUNC5(sonic->res_dmaa);
	FUNC5(sonic->res_dmac);
	FUNC3(sonic->pci);
	FUNC2(sonic->pci);
	FUNC1(sonic);
	return 0;
}