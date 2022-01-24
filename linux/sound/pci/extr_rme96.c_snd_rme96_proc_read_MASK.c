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
struct snd_info_entry {struct rme96* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct rme96 {int wcreg; int areg; scalar_t__* vol; TYPE_1__* card; scalar_t__ iobase; int /*<<< orphan*/  rcreg; } ;
struct TYPE_2__ {scalar_t__ number; int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int RME96_AR_WSEL ; 
#define  RME96_ATTENUATION_0 140 
#define  RME96_ATTENUATION_12 139 
#define  RME96_ATTENUATION_18 138 
#define  RME96_ATTENUATION_6 137 
 scalar_t__ FUNC0 (struct rme96*) ; 
#define  RME96_INPUT_ANALOG 136 
#define  RME96_INPUT_COAXIAL 135 
#define  RME96_INPUT_INTERNAL 134 
#define  RME96_INPUT_OPTICAL 133 
#define  RME96_INPUT_XLR 132 
 scalar_t__ RME96_IO_CONTROL_REGISTER ; 
#define  RME96_MONITOR_TRACKS_1_2 131 
#define  RME96_MONITOR_TRACKS_3_4 130 
#define  RME96_MONITOR_TRACKS_5_6 129 
#define  RME96_MONITOR_TRACKS_7_8 128 
 int RME96_WCR_DOLBY ; 
 int RME96_WCR_EMP ; 
 int RME96_WCR_IDIS ; 
 int RME96_WCR_ISEL ; 
 int RME96_WCR_MASTER ; 
 int RME96_WCR_MODE24 ; 
 int RME96_WCR_MODE24_2 ; 
 int RME96_WCR_PRO ; 
 int RME96_WCR_SEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 
 scalar_t__ FUNC3 (struct rme96*,int*) ; 
 int FUNC4 (struct rme96*) ; 
 int const FUNC5 (struct rme96*) ; 
 int FUNC6 (struct rme96*) ; 
 scalar_t__ FUNC7 (struct rme96*) ; 

__attribute__((used)) static void 
FUNC8(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	int n;
	struct rme96 *rme96 = entry->private_data;
	
	rme96->rcreg = FUNC1(rme96->iobase + RME96_IO_CONTROL_REGISTER);

	FUNC2(buffer, rme96->card->longname);
	FUNC2(buffer, " (index #%d)\n", rme96->card->number + 1);

	FUNC2(buffer, "\nGeneral settings\n");
	if (rme96->wcreg & RME96_WCR_IDIS) {
		FUNC2(buffer, "  period size: N/A (interrupts "
			    "disabled)\n");
	} else if (rme96->wcreg & RME96_WCR_ISEL) {
		FUNC2(buffer, "  period size: 2048 bytes\n");
	} else {
		FUNC2(buffer, "  period size: 8192 bytes\n");
	}	
	FUNC2(buffer, "\nInput settings\n");
	switch (FUNC5(rme96)) {
	case RME96_INPUT_OPTICAL:
		FUNC2(buffer, "  input: optical");
		break;
	case RME96_INPUT_COAXIAL:
		FUNC2(buffer, "  input: coaxial");
		break;
	case RME96_INPUT_INTERNAL:
		FUNC2(buffer, "  input: internal");
		break;
	case RME96_INPUT_XLR:
		FUNC2(buffer, "  input: XLR");
		break;
	case RME96_INPUT_ANALOG:
		FUNC2(buffer, "  input: analog");
		break;
	}
	if (FUNC3(rme96, &n) < 0) {
		FUNC2(buffer, "\n  sample rate: no valid signal\n");
	} else {
		if (n) {
			FUNC2(buffer, " (8 channels)\n");
		} else {
			FUNC2(buffer, " (2 channels)\n");
		}
		FUNC2(buffer, "  sample rate: %d Hz\n",
			    FUNC3(rme96, &n));
	}
	if (rme96->wcreg & RME96_WCR_MODE24_2) {
		FUNC2(buffer, "  sample format: 24 bit\n");
	} else {
		FUNC2(buffer, "  sample format: 16 bit\n");
	}
	
	FUNC2(buffer, "\nOutput settings\n");
	if (rme96->wcreg & RME96_WCR_SEL) {
		FUNC2(buffer, "  output signal: normal playback\n");
	} else {
		FUNC2(buffer, "  output signal: same as input\n");
	}
	FUNC2(buffer, "  sample rate: %d Hz\n",
		    FUNC7(rme96));
	if (rme96->wcreg & RME96_WCR_MODE24) {
		FUNC2(buffer, "  sample format: 24 bit\n");
	} else {
		FUNC2(buffer, "  sample format: 16 bit\n");
	}
	if (rme96->areg & RME96_AR_WSEL) {
		FUNC2(buffer, "  sample clock source: word clock\n");
	} else if (rme96->wcreg & RME96_WCR_MASTER) {
		FUNC2(buffer, "  sample clock source: internal\n");
	} else if (FUNC5(rme96) == RME96_INPUT_ANALOG) {
		FUNC2(buffer, "  sample clock source: autosync (internal anyway due to analog input setting)\n");
	} else if (FUNC3(rme96, &n) < 0) {
		FUNC2(buffer, "  sample clock source: autosync (internal anyway due to no valid signal)\n");
	} else {
		FUNC2(buffer, "  sample clock source: autosync\n");
	}
	if (rme96->wcreg & RME96_WCR_PRO) {
		FUNC2(buffer, "  format: AES/EBU (professional)\n");
	} else {
		FUNC2(buffer, "  format: IEC958 (consumer)\n");
	}
	if (rme96->wcreg & RME96_WCR_EMP) {
		FUNC2(buffer, "  emphasis: on\n");
	} else {
		FUNC2(buffer, "  emphasis: off\n");
	}
	if (rme96->wcreg & RME96_WCR_DOLBY) {
		FUNC2(buffer, "  non-audio (dolby): on\n");
	} else {
		FUNC2(buffer, "  non-audio (dolby): off\n");
	}
	if (FUNC0(rme96)) {
		FUNC2(buffer, "\nAnalog output settings\n");
		switch (FUNC6(rme96)) {
		case RME96_MONITOR_TRACKS_1_2:
			FUNC2(buffer, "  monitored ADAT tracks: 1+2\n");
			break;
		case RME96_MONITOR_TRACKS_3_4:
			FUNC2(buffer, "  monitored ADAT tracks: 3+4\n");
			break;
		case RME96_MONITOR_TRACKS_5_6:
			FUNC2(buffer, "  monitored ADAT tracks: 5+6\n");
			break;
		case RME96_MONITOR_TRACKS_7_8:
			FUNC2(buffer, "  monitored ADAT tracks: 7+8\n");
			break;
		}
		switch (FUNC4(rme96)) {
		case RME96_ATTENUATION_0:
			FUNC2(buffer, "  attenuation: 0 dB\n");
			break;
		case RME96_ATTENUATION_6:
			FUNC2(buffer, "  attenuation: -6 dB\n");
			break;
		case RME96_ATTENUATION_12:
			FUNC2(buffer, "  attenuation: -12 dB\n");
			break;
		case RME96_ATTENUATION_18:
			FUNC2(buffer, "  attenuation: -18 dB\n");
			break;
		}
		FUNC2(buffer, "  volume left: %u\n", rme96->vol[0]);
		FUNC2(buffer, "  volume right: %u\n", rme96->vol[1]);
	}
}