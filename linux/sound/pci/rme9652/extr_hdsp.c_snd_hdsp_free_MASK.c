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
struct hdsp {int control_register; scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ port; int /*<<< orphan*/  iobase; int /*<<< orphan*/  fw_uploaded; int /*<<< orphan*/  firmware; int /*<<< orphan*/  midi_tasklet; } ;

/* Variables and functions */
 int HDSP_AudioInterruptEnable ; 
 int HDSP_Midi0InterruptEnable ; 
 int HDSP_Midi1InterruptEnable ; 
 int HDSP_Start ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hdsp *hdsp)
{
	if (hdsp->port) {
		/* stop the audio, and cancel all interrupts */
		FUNC7(&hdsp->midi_tasklet);
		hdsp->control_register &= ~(HDSP_Start|HDSP_AudioInterruptEnable|HDSP_Midi0InterruptEnable|HDSP_Midi1InterruptEnable);
		FUNC1 (hdsp, HDSP_controlRegister, hdsp->control_register);
	}

	if (hdsp->irq >= 0)
		FUNC0(hdsp->irq, (void *)hdsp);

	FUNC6(hdsp);

	FUNC5(hdsp->firmware);
	FUNC8(hdsp->fw_uploaded);
	FUNC2(hdsp->iobase);

	if (hdsp->port)
		FUNC4(hdsp->pci);

	FUNC3(hdsp->pci);
	return 0;
}