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
struct snd_pci_quirk {int value; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int VIA_DXS_48K ; 
 int VIA_DXS_SRC ; 
 int VIA_REV_8235 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dxs_whitelist ; 
 struct snd_pci_quirk* FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pci_quirk const*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pci, int revision)
{
	const struct snd_pci_quirk *w;

	w = FUNC2(pci, dxs_whitelist);
	if (w) {
		FUNC0(&pci->dev, "DXS white list for %s found\n",
			    FUNC3(w));
		return w->value;
	}

	/* for newer revision, default to DXS_SRC */
	if (revision >= VIA_REV_8235)
		return VIA_DXS_SRC;

	/*
	 * not detected, try 48k rate only to be sure.
	 */
	FUNC1(&pci->dev, "Assuming DXS channels with 48k fixed sample rate.\n");
	FUNC1(&pci->dev, "         Please try dxs_support=5 option\n");
	FUNC1(&pci->dev, "         and report if it works on your machine.\n");
	FUNC1(&pci->dev, "         For more details, read ALSA-Configuration.txt.\n");
	return VIA_DXS_48K;
}