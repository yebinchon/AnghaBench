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
struct snd_info_entry {scalar_t__ private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct rme32 {int rcreg; int wcreg; scalar_t__ fullduplex_mode; TYPE_1__* card; scalar_t__ iobase; } ;
struct TYPE_2__ {char* longname; scalar_t__ number; } ;

/* Variables and functions */
#define  RME32_INPUT_COAXIAL 131 
#define  RME32_INPUT_INTERNAL 130 
#define  RME32_INPUT_OPTICAL 129 
#define  RME32_INPUT_XLR 128 
 scalar_t__ RME32_IO_CONTROL_REGISTER ; 
 scalar_t__ FUNC0 (struct rme32*) ; 
 int RME32_RCR_KMODE ; 
 int RME32_WCR_EMP ; 
 int RME32_WCR_FREQ_0 ; 
 int RME32_WCR_FREQ_1 ; 
 int RME32_WCR_MODE24 ; 
 int RME32_WCR_MONO ; 
 int RME32_WCR_MUTE ; 
 int RME32_WCR_PRO ; 
 int RME32_WCR_SEL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 
 scalar_t__ FUNC3 (struct rme32*,int*) ; 
 int FUNC4 (struct rme32*) ; 
 int /*<<< orphan*/  FUNC5 (struct rme32*) ; 

__attribute__((used)) static void
FUNC6(struct snd_info_entry * entry, struct snd_info_buffer *buffer)
{
	int n;
	struct rme32 *rme32 = (struct rme32 *) entry->private_data;

	rme32->rcreg = FUNC1(rme32->iobase + RME32_IO_CONTROL_REGISTER);

	FUNC2(buffer, rme32->card->longname);
	FUNC2(buffer, " (index #%d)\n", rme32->card->number + 1);

	FUNC2(buffer, "\nGeneral settings\n");
	if (rme32->fullduplex_mode)
		FUNC2(buffer, "  Full-duplex mode\n");
	else
		FUNC2(buffer, "  Half-duplex mode\n");
	if (FUNC0(rme32)) {
		FUNC2(buffer, "  receiver: CS8414\n");
	} else {
		FUNC2(buffer, "  receiver: CS8412\n");
	}
	if (rme32->wcreg & RME32_WCR_MODE24) {
		FUNC2(buffer, "  format: 24 bit");
	} else {
		FUNC2(buffer, "  format: 16 bit");
	}
	if (rme32->wcreg & RME32_WCR_MONO) {
		FUNC2(buffer, ", Mono\n");
	} else {
		FUNC2(buffer, ", Stereo\n");
	}

	FUNC2(buffer, "\nInput settings\n");
	switch (FUNC4(rme32)) {
	case RME32_INPUT_OPTICAL:
		FUNC2(buffer, "  input: optical");
		break;
	case RME32_INPUT_COAXIAL:
		FUNC2(buffer, "  input: coaxial");
		break;
	case RME32_INPUT_INTERNAL:
		FUNC2(buffer, "  input: internal");
		break;
	case RME32_INPUT_XLR:
		FUNC2(buffer, "  input: XLR");
		break;
	}
	if (FUNC3(rme32, &n) < 0) {
		FUNC2(buffer, "\n  sample rate: no valid signal\n");
	} else {
		if (n) {
			FUNC2(buffer, " (8 channels)\n");
		} else {
			FUNC2(buffer, " (2 channels)\n");
		}
		FUNC2(buffer, "  sample rate: %d Hz\n",
			    FUNC3(rme32, &n));
	}

	FUNC2(buffer, "\nOutput settings\n");
	if (rme32->wcreg & RME32_WCR_SEL) {
		FUNC2(buffer, "  output signal: normal playback");
	} else {
		FUNC2(buffer, "  output signal: same as input");
	}
	if (rme32->wcreg & RME32_WCR_MUTE) {
		FUNC2(buffer, " (muted)\n");
	} else {
		FUNC2(buffer, "\n");
	}

	/* master output frequency */
	if (!
	    ((!(rme32->wcreg & RME32_WCR_FREQ_0))
	     && (!(rme32->wcreg & RME32_WCR_FREQ_1)))) {
		FUNC2(buffer, "  sample rate: %d Hz\n",
			    FUNC5(rme32));
	}
	if (rme32->rcreg & RME32_RCR_KMODE) {
		FUNC2(buffer, "  sample clock source: AutoSync\n");
	} else {
		FUNC2(buffer, "  sample clock source: Internal\n");
	}
	if (rme32->wcreg & RME32_WCR_PRO) {
		FUNC2(buffer, "  format: AES/EBU (professional)\n");
	} else {
		FUNC2(buffer, "  format: IEC958 (consumer)\n");
	}
	if (rme32->wcreg & RME32_WCR_EMP) {
		FUNC2(buffer, "  emphasis: on\n");
	} else {
		FUNC2(buffer, "  emphasis: off\n");
	}
}