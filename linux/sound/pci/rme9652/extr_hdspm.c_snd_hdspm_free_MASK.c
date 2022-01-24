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
struct hdspm {int control_register; scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ port; int /*<<< orphan*/  iobase; int /*<<< orphan*/  mixer; } ;

/* Variables and functions */
 int HDSPM_AudioInterruptEnable ; 
 int HDSPM_Midi0InterruptEnable ; 
 int HDSPM_Midi1InterruptEnable ; 
 int HDSPM_Midi2InterruptEnable ; 
 int HDSPM_Midi3InterruptEnable ; 
 int HDSPM_Start ; 
 int /*<<< orphan*/  HDSPM_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hdspm * hdspm)
{

	if (hdspm->port) {

		/* stop th audio, and cancel all interrupts */
		hdspm->control_register &=
		    ~(HDSPM_Start | HDSPM_AudioInterruptEnable |
		      HDSPM_Midi0InterruptEnable | HDSPM_Midi1InterruptEnable |
		      HDSPM_Midi2InterruptEnable | HDSPM_Midi3InterruptEnable);
		FUNC1(hdspm, HDSPM_controlRegister,
			    hdspm->control_register);
	}

	if (hdspm->irq >= 0)
		FUNC0(hdspm->irq, (void *) hdspm);

	FUNC3(hdspm->mixer);
	FUNC2(hdspm->iobase);

	if (hdspm->port)
		FUNC5(hdspm->pci);

	FUNC4(hdspm->pci);
	return 0;
}