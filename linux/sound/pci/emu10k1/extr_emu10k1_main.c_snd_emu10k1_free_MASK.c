#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ area; } ;
struct TYPE_4__ {int /*<<< orphan*/  firmware_work; } ;
struct snd_emu10k1 {scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_2__* card_capabilities; scalar_t__ port; int /*<<< orphan*/  page_addr_table; int /*<<< orphan*/  page_ptr_table; TYPE_3__ ptb_pages; TYPE_3__ silent_page; int /*<<< orphan*/  memhdr; int /*<<< orphan*/  dock_fw; int /*<<< orphan*/  firmware; TYPE_1__ emu1010; } ;
struct TYPE_5__ {scalar_t__ emu_model; scalar_t__ ca0151_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_HANA_DOCK_PWR ; 
 scalar_t__ EMU_MODEL_EMU1010 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu10k1*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct snd_emu10k1 *emu)
{
	if (emu->port) {	/* avoid access to already used hardware */
		FUNC11(emu, 0);
		FUNC9(emu);
		FUNC10(emu);
	}
	if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1010) {
		/* Disable 48Volt power to Audio Dock */
		FUNC8(emu, EMU_HANA_DOCK_PWR, 0);
	}
	FUNC0(&emu->emu1010.firmware_work);
	FUNC6(emu->firmware);
	FUNC6(emu->dock_fw);
	if (emu->irq >= 0)
		FUNC1(emu->irq, emu);
	FUNC13(emu->memhdr);
	if (emu->silent_page.area)
		FUNC7(&emu->silent_page);
	if (emu->ptb_pages.area)
		FUNC7(&emu->ptb_pages);
	FUNC14(emu->page_ptr_table);
	FUNC14(emu->page_addr_table);
#ifdef CONFIG_PM_SLEEP
	free_pm_buffer(emu);
#endif
	if (emu->port)
		FUNC5(emu->pci);
	if (emu->card_capabilities->ca0151_chip) /* P16V */
		FUNC12(emu);
	FUNC4(emu->pci);
	FUNC3(emu);
	return 0;
}