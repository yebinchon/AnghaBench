#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ area; } ;
struct TYPE_3__ {TYPE_2__ buffer; int /*<<< orphan*/  shadow_entries; TYPE_2__ silent_page; int /*<<< orphan*/  memhdr; } ;
struct snd_trident {scalar_t__ device; scalar_t__ irq; int /*<<< orphan*/  pci; TYPE_1__ tlb; } ;

/* Variables and functions */
 scalar_t__ NX_SPCTRL_SPCSO ; 
 scalar_t__ NX_TLBC ; 
 scalar_t__ SI_SERIAL_INTF_CTRL ; 
 scalar_t__ TRIDENT_DEVICE_ID_NX ; 
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_trident *trident)
{
	FUNC9(trident);
	FUNC8(trident);
	// Disable S/PDIF out
	if (trident->device == TRIDENT_DEVICE_ID_NX)
		FUNC3(0x00, FUNC0(trident, NX_SPCTRL_SPCSO + 3));
	else if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
		FUNC4(0, FUNC0(trident, SI_SERIAL_INTF_CTRL));
	}
	if (trident->irq >= 0)
		FUNC1(trident->irq, trident);
	if (trident->tlb.buffer.area) {
		FUNC4(0, FUNC0(trident, NX_TLBC));
		FUNC10(trident->tlb.memhdr);
		if (trident->tlb.silent_page.area)
			FUNC7(&trident->tlb.silent_page);
		FUNC11(trident->tlb.shadow_entries);
		FUNC7(&trident->tlb.buffer);
	}
	FUNC6(trident->pci);
	FUNC5(trident->pci);
	FUNC2(trident);
	return 0;
}