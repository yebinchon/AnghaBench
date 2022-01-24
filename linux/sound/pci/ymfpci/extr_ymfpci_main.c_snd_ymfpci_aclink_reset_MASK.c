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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_DSXG_CTRL ; 
 int /*<<< orphan*/  PCIR_DSXG_PWRCTRL1 ; 
 int /*<<< orphan*/  PCIR_DSXG_PWRCTRL2 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev * pci)
{
	u8 cmd;

	FUNC0(pci, PCIR_DSXG_CTRL, &cmd);
#if 0 // force to reset
	if (cmd & 0x03) {
#endif
		FUNC1(pci, PCIR_DSXG_CTRL, cmd & 0xfc);
		FUNC1(pci, PCIR_DSXG_CTRL, cmd | 0x03);
		FUNC1(pci, PCIR_DSXG_CTRL, cmd & 0xfc);
		FUNC2(pci, PCIR_DSXG_PWRCTRL1, 0);
		FUNC2(pci, PCIR_DSXG_PWRCTRL2, 0);
#if 0
	}
#endif
}