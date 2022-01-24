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
typedef  int u32 ;
typedef  int u16 ;
struct snd_m3 {unsigned long iobase; int hv_config; scalar_t__ allegro_flag; struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ALIAS_10BIT_IO ; 
 int ASSP_0_WS_ENABLE ; 
 int ASSP_CLK_49MHZ_SELECT ; 
 scalar_t__ ASSP_CONTROL_A ; 
 scalar_t__ ASSP_CONTROL_B ; 
 int CLK_DIV_BY_49 ; 
 int CLK_MULT_MODE_SELECT ; 
 int CLK_MULT_MODE_SELECT_2 ; 
 int DISABLE_LEGACY ; 
 int DSP_CLK_36MHZ_SELECT ; 
 int FM_SYNTHESIS_ENABLE ; 
 scalar_t__ HARDWARE_VOL_CTRL ; 
 int HV_BUTTON_FROM_GD ; 
 int HV_CTRL_ENABLE ; 
 scalar_t__ HW_VOL_COUNTER_MASTER ; 
 scalar_t__ HW_VOL_COUNTER_VOICE ; 
 int INT_CLK_MULT_ENABLE ; 
 int INT_CLK_SELECT ; 
 int INT_CLK_SRC_NOT_PCI ; 
 int IN_CLK_12MHZ_SELECT ; 
 int MPU401_IO_ENABLE ; 
 int MPU401_IRQ_ENABLE ; 
 int /*<<< orphan*/  PCI_ALLEGRO_CONFIG ; 
 int /*<<< orphan*/  PCI_LEGACY_AUDIO_CTRL ; 
 int /*<<< orphan*/  PCI_USER_CONFIG ; 
 int PM_CTRL_ENABLE ; 
 int REDUCED_DEBOUNCE ; 
 int RESET_ASSP ; 
 int RUN_ASSP ; 
 scalar_t__ SHADOW_MIX_REG_MASTER ; 
 scalar_t__ SHADOW_MIX_REG_VOICE ; 
 int SOUND_BLASTER_ENABLE ; 
 int USE_PCI_TIMING ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_m3*) ; 

__attribute__((used)) static int
FUNC7(struct snd_m3 *chip)
{
	struct pci_dev *pcidev = chip->pci;
	unsigned long io = chip->iobase;
	u32 n;
	u16 w;
	u8 t; /* makes as much sense as 'n', no? */

	FUNC3(pcidev, PCI_LEGACY_AUDIO_CTRL, &w);
	w &= ~(SOUND_BLASTER_ENABLE|FM_SYNTHESIS_ENABLE|
	       MPU401_IO_ENABLE|MPU401_IRQ_ENABLE|ALIAS_10BIT_IO|
	       DISABLE_LEGACY);
	FUNC5(pcidev, PCI_LEGACY_AUDIO_CTRL, w);

	FUNC2(pcidev, PCI_ALLEGRO_CONFIG, &n);
	n &= ~(HV_CTRL_ENABLE | REDUCED_DEBOUNCE | HV_BUTTON_FROM_GD);
	n |= chip->hv_config;
	/* For some reason we must always use reduced debounce. */
	n |= REDUCED_DEBOUNCE;
	n |= PM_CTRL_ENABLE | CLK_DIV_BY_49 | USE_PCI_TIMING;
	FUNC4(pcidev, PCI_ALLEGRO_CONFIG, n);

	FUNC1(RESET_ASSP, chip->iobase + ASSP_CONTROL_B);
	FUNC2(pcidev, PCI_ALLEGRO_CONFIG, &n);
	n &= ~INT_CLK_SELECT;
	if (!chip->allegro_flag) {
		n &= ~INT_CLK_MULT_ENABLE; 
		n |= INT_CLK_SRC_NOT_PCI;
	}
	n &=  ~( CLK_MULT_MODE_SELECT | CLK_MULT_MODE_SELECT_2 );
	FUNC4(pcidev, PCI_ALLEGRO_CONFIG, n);

	if (chip->allegro_flag) {
		FUNC2(pcidev, PCI_USER_CONFIG, &n);
		n |= IN_CLK_12MHZ_SELECT;
		FUNC4(pcidev, PCI_USER_CONFIG, n);
	}

	t = FUNC0(chip->iobase + ASSP_CONTROL_A);
	t &= ~( DSP_CLK_36MHZ_SELECT  | ASSP_CLK_49MHZ_SELECT);
	t |= ASSP_CLK_49MHZ_SELECT;
	t |= ASSP_0_WS_ENABLE; 
	FUNC1(t, chip->iobase + ASSP_CONTROL_A);

	FUNC6(chip); /* download DSP code before starting ASSP below */
	FUNC1(RUN_ASSP, chip->iobase + ASSP_CONTROL_B); 

	FUNC1(0x00, io + HARDWARE_VOL_CTRL);
	FUNC1(0x88, io + SHADOW_MIX_REG_VOICE);
	FUNC1(0x88, io + HW_VOL_COUNTER_VOICE);
	FUNC1(0x88, io + SHADOW_MIX_REG_MASTER);
	FUNC1(0x88, io + HW_VOL_COUNTER_MASTER);

	return 0;
}