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
struct azx {int driver_caps; TYPE_1__* card; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_SB450_HDAUDIO_ENABLE_SNOOP ; 
 int /*<<< orphan*/  ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR ; 
 int AZX_DCAPS_NO_TCSEL ; 
 int /*<<< orphan*/  AZX_PCIREG_TCSEL ; 
 int AZX_SNOOP_TYPE_ATI ; 
 int AZX_SNOOP_TYPE_NVIDIA ; 
 int AZX_SNOOP_TYPE_SCH ; 
 int /*<<< orphan*/  INTEL_SCH_HDA_DEVC ; 
 unsigned short INTEL_SCH_HDA_DEVC_NOSNOOP ; 
 int /*<<< orphan*/  NVIDIA_HDA_ENABLE_COHBIT ; 
 int /*<<< orphan*/  NVIDIA_HDA_ENABLE_COHBITS ; 
 int /*<<< orphan*/  NVIDIA_HDA_ISTRM_COH ; 
 int /*<<< orphan*/  NVIDIA_HDA_OSTRM_COH ; 
 int /*<<< orphan*/  NVIDIA_HDA_TRANSREG_ADDR ; 
 int FUNC0 (struct azx*) ; 
 char* FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct azx *chip)
{
	int snoop_type = FUNC0(chip);

	/* Clear bits 0-2 of PCI register TCSEL (at offset 0x44)
	 * TCSEL == Traffic Class Select Register, which sets PCI express QOS
	 * Ensuring these bits are 0 clears playback static on some HD Audio
	 * codecs.
	 * The PCI register TCSEL is defined in the Intel manuals.
	 */
	if (!(chip->driver_caps & AZX_DCAPS_NO_TCSEL)) {
		FUNC2(chip->card->dev, "Clearing TCSEL\n");
		FUNC5(chip->pci, AZX_PCIREG_TCSEL, 0x07, 0);
	}

	/* For ATI SB450/600/700/800/900 and AMD Hudson azalia HD audio,
	 * we need to enable snoop.
	 */
	if (snoop_type == AZX_SNOOP_TYPE_ATI) {
		FUNC2(chip->card->dev, "Setting ATI snoop: %d\n",
			FUNC1(chip));
		FUNC5(chip->pci,
				ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR, 0x07,
				FUNC1(chip) ? ATI_SB450_HDAUDIO_ENABLE_SNOOP : 0);
	}

	/* For NVIDIA HDA, enable snoop */
	if (snoop_type == AZX_SNOOP_TYPE_NVIDIA) {
		FUNC2(chip->card->dev, "Setting Nvidia snoop: %d\n",
			FUNC1(chip));
		FUNC5(chip->pci,
				NVIDIA_HDA_TRANSREG_ADDR,
				0x0f, NVIDIA_HDA_ENABLE_COHBITS);
		FUNC5(chip->pci,
				NVIDIA_HDA_ISTRM_COH,
				0x01, NVIDIA_HDA_ENABLE_COHBIT);
		FUNC5(chip->pci,
				NVIDIA_HDA_OSTRM_COH,
				0x01, NVIDIA_HDA_ENABLE_COHBIT);
	}

	/* Enable SCH/PCH snoop if needed */
	if (snoop_type == AZX_SNOOP_TYPE_SCH) {
		unsigned short snoop;
		FUNC3(chip->pci, INTEL_SCH_HDA_DEVC, &snoop);
		if ((!FUNC1(chip) && !(snoop & INTEL_SCH_HDA_DEVC_NOSNOOP)) ||
		    (FUNC1(chip) && (snoop & INTEL_SCH_HDA_DEVC_NOSNOOP))) {
			snoop &= ~INTEL_SCH_HDA_DEVC_NOSNOOP;
			if (!FUNC1(chip))
				snoop |= INTEL_SCH_HDA_DEVC_NOSNOOP;
			FUNC4(chip->pci, INTEL_SCH_HDA_DEVC, snoop);
			FUNC3(chip->pci,
				INTEL_SCH_HDA_DEVC, &snoop);
		}
		FUNC2(chip->card->dev, "SCH snoop: %s\n",
			(snoop & INTEL_SCH_HDA_DEVC_NOSNOOP) ?
			"Disabled" : "Enabled");
        }
}