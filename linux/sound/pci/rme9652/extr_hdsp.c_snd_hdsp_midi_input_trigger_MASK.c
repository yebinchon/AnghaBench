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
typedef  int u32 ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdsp_midi {scalar_t__ id; struct hdsp* hdsp; } ;
struct hdsp {int control_register; int /*<<< orphan*/  lock; int /*<<< orphan*/  midi_tasklet; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int HDSP_Midi0InterruptEnable ; 
 int HDSP_Midi1InterruptEnable ; 
 int /*<<< orphan*/  HDSP_controlRegister ; 
 int /*<<< orphan*/  FUNC0 (struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdsp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_rawmidi_substream *substream, int up)
{
	struct hdsp *hdsp;
	struct hdsp_midi *hmidi;
	unsigned long flags;
	u32 ie;

	hmidi = (struct hdsp_midi *) substream->rmidi->private_data;
	hdsp = hmidi->hdsp;
	ie = hmidi->id ? HDSP_Midi1InterruptEnable : HDSP_Midi0InterruptEnable;
	FUNC2 (&hdsp->lock, flags);
	if (up) {
		if (!(hdsp->control_register & ie)) {
			FUNC1 (hdsp, hmidi->id);
			hdsp->control_register |= ie;
		}
	} else {
		hdsp->control_register &= ~ie;
		FUNC4(&hdsp->midi_tasklet);
	}

	FUNC0(hdsp, HDSP_controlRegister, hdsp->control_register);
	FUNC3 (&hdsp->lock, flags);
}