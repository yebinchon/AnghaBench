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
struct snd_info_entry {struct hdsp* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdsp {int control_register; int state; int io_type; scalar_t__ clock_source_locked; int /*<<< orphan*/  system_sample_rate; scalar_t__ precise_ptr; scalar_t__ period_bytes; scalar_t__ use_midi_tasklet; int /*<<< orphan*/  control2_register; scalar_t__ iobase; int /*<<< orphan*/  port; int /*<<< orphan*/  irq; int /*<<< orphan*/  playback_buffer; int /*<<< orphan*/  capture_buffer; TYPE_1__* card; int /*<<< orphan*/  card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
#define  Digiface 166 
 int EINVAL ; 
 int H9632 ; 
#define  H9652 165 
#define  HDSP_AUTOSYNC_FROM_ADAT1 164 
#define  HDSP_AUTOSYNC_FROM_ADAT2 163 
#define  HDSP_AUTOSYNC_FROM_ADAT3 162 
#define  HDSP_AUTOSYNC_FROM_ADAT_SYNC 161 
#define  HDSP_AUTOSYNC_FROM_NONE 160 
#define  HDSP_AUTOSYNC_FROM_SPDIF 159 
#define  HDSP_AUTOSYNC_FROM_WORD 158 
 int HDSP_AnalogExtensionBoard ; 
#define  HDSP_CLOCK_SOURCE_AUTOSYNC 157 
#define  HDSP_CLOCK_SOURCE_INTERNAL_128KHZ 156 
#define  HDSP_CLOCK_SOURCE_INTERNAL_176_4KHZ 155 
#define  HDSP_CLOCK_SOURCE_INTERNAL_192KHZ 154 
#define  HDSP_CLOCK_SOURCE_INTERNAL_32KHZ 153 
#define  HDSP_CLOCK_SOURCE_INTERNAL_44_1KHZ 152 
#define  HDSP_CLOCK_SOURCE_INTERNAL_48KHZ 151 
#define  HDSP_CLOCK_SOURCE_INTERNAL_64KHZ 150 
#define  HDSP_CLOCK_SOURCE_INTERNAL_88_2KHZ 149 
#define  HDSP_CLOCK_SOURCE_INTERNAL_96KHZ 148 
 int HDSP_FirmwareCached ; 
 int HDSP_LatencyMask ; 
 int HDSP_LineOut ; 
 unsigned int HDSP_Lock0 ; 
 unsigned int HDSP_Lock1 ; 
 unsigned int HDSP_Lock2 ; 
 int HDSP_RPM_Bypass ; 
 int HDSP_RPM_Disconnect ; 
 int HDSP_RPM_Inp12 ; 
#define  HDSP_RPM_Inp12_Line_0dB 147 
#define  HDSP_RPM_Inp12_Line_n6dB 146 
#define  HDSP_RPM_Inp12_Phon_0dB 145 
#define  HDSP_RPM_Inp12_Phon_6dB 144 
#define  HDSP_RPM_Inp12_Phon_n6dB 143 
 int HDSP_RPM_Inp34 ; 
#define  HDSP_RPM_Inp34_Line_0dB 142 
#define  HDSP_RPM_Inp34_Line_n6dB 141 
#define  HDSP_RPM_Inp34_Phon_0dB 140 
#define  HDSP_RPM_Inp34_Phon_6dB 139 
#define  HDSP_RPM_Inp34_Phon_n6dB 138 
 int HDSP_SPDIFEmphasis ; 
 unsigned int HDSP_SPDIFErrorFlag ; 
#define  HDSP_SPDIFIN_AES 137 
#define  HDSP_SPDIFIN_COAXIAL 136 
#define  HDSP_SPDIFIN_INTERNAL 135 
#define  HDSP_SPDIFIN_OPTICAL 134 
 int HDSP_SPDIFNonAudio ; 
 int HDSP_SPDIFOpticalOut ; 
 int HDSP_SPDIFProfessional ; 
 unsigned int HDSP_SPDIFSync ; 
#define  HDSP_SYNC_FROM_ADAT1 133 
#define  HDSP_SYNC_FROM_ADAT2 132 
#define  HDSP_SYNC_FROM_ADAT3 131 
#define  HDSP_SYNC_FROM_ADAT_SYNC 130 
#define  HDSP_SYNC_FROM_SPDIF 129 
#define  HDSP_SYNC_FROM_WORD 128 
 unsigned int HDSP_Sync0 ; 
 unsigned int HDSP_Sync1 ; 
 unsigned int HDSP_Sync2 ; 
 unsigned int HDSP_TimecodeLock ; 
 unsigned int HDSP_TimecodeSync ; 
 int /*<<< orphan*/  HDSP_XLRBreakoutCable ; 
 int /*<<< orphan*/  HDSP_fifoStatus ; 
 int /*<<< orphan*/  HDSP_midiStatusIn0 ; 
 int /*<<< orphan*/  HDSP_midiStatusIn1 ; 
 int /*<<< orphan*/  HDSP_midiStatusOut0 ; 
 int /*<<< orphan*/  HDSP_midiStatusOut1 ; 
 int /*<<< orphan*/  HDSP_status2Register ; 
 int /*<<< orphan*/  HDSP_statusRegister ; 
 unsigned int HDSP_version0 ; 
 unsigned int HDSP_version1 ; 
 unsigned int HDSP_version2 ; 
 unsigned int HDSP_wc_lock ; 
 unsigned int HDSP_wc_sync ; 
 int RPM ; 
 int FUNC0 (struct hdsp*) ; 
 int FUNC1 (struct hdsp*) ; 
 scalar_t__ FUNC2 (struct hdsp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hdsp*) ; 
 int FUNC4 (struct hdsp*) ; 
 int FUNC5 (struct hdsp*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC8 (struct hdsp*) ; 
 int FUNC9 (struct hdsp*) ; 
 int FUNC10 (struct hdsp*) ; 
 int FUNC11 (struct hdsp*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct hdsp*) ; 
 int FUNC13 (struct hdsp*) ; 
 int FUNC14 (struct hdsp*) ; 
 scalar_t__ FUNC15 (struct hdsp*) ; 
 scalar_t__ FUNC16 (struct hdsp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void
FUNC19(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct hdsp *hdsp = entry->private_data;
	unsigned int status;
	unsigned int status2;
	char *pref_sync_ref;
	char *autosync_ref;
	char *system_clock_mode;
	char *clock_source;
	int x;

	status = FUNC11(hdsp, HDSP_statusRegister);
	status2 = FUNC11(hdsp, HDSP_status2Register);

	FUNC18(buffer, "%s (Card #%d)\n", hdsp->card_name,
		    hdsp->card->number + 1);
	FUNC18(buffer, "Buffers: capture %p playback %p\n",
		    hdsp->capture_buffer, hdsp->playback_buffer);
	FUNC18(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
		    hdsp->irq, hdsp->port, (unsigned long)hdsp->iobase);
	FUNC18(buffer, "Control register: 0x%x\n", hdsp->control_register);
	FUNC18(buffer, "Control2 register: 0x%x\n",
		    hdsp->control2_register);
	FUNC18(buffer, "Status register: 0x%x\n", status);
	FUNC18(buffer, "Status2 register: 0x%x\n", status2);

	if (FUNC3(hdsp)) {
		FUNC18(buffer, "No I/O box connected.\n"
			    "Please connect one and upload firmware.\n");
		return;
	}

	if (FUNC2(hdsp, 0)) {
		if (hdsp->state & HDSP_FirmwareCached) {
			if (FUNC17(hdsp) != 0) {
				FUNC18(buffer, "Firmware loading from "
					    "cache failed, "
					    "please upload manually.\n");
				return;
			}
		} else {
			int err = -EINVAL;
			err = FUNC12(hdsp);
			if (err < 0) {
				FUNC18(buffer,
					    "No firmware loaded nor cached, "
					    "please upload firmware.\n");
				return;
			}
		}
	}

	FUNC18(buffer, "FIFO status: %d\n", FUNC11(hdsp, HDSP_fifoStatus) & 0xff);
	FUNC18(buffer, "MIDI1 Output status: 0x%x\n", FUNC11(hdsp, HDSP_midiStatusOut0));
	FUNC18(buffer, "MIDI1 Input status: 0x%x\n", FUNC11(hdsp, HDSP_midiStatusIn0));
	FUNC18(buffer, "MIDI2 Output status: 0x%x\n", FUNC11(hdsp, HDSP_midiStatusOut1));
	FUNC18(buffer, "MIDI2 Input status: 0x%x\n", FUNC11(hdsp, HDSP_midiStatusIn1));
	FUNC18(buffer, "Use Midi Tasklet: %s\n", hdsp->use_midi_tasklet ? "on" : "off");

	FUNC18(buffer, "\n");

	x = 1 << (6 + FUNC6(hdsp->control_register & HDSP_LatencyMask));

	FUNC18(buffer, "Buffer Size (Latency): %d samples (2 periods of %lu bytes)\n", x, (unsigned long) hdsp->period_bytes);
	FUNC18(buffer, "Hardware pointer (frames): %ld\n", FUNC8(hdsp));
	FUNC18(buffer, "Precise pointer: %s\n", hdsp->precise_ptr ? "on" : "off");
	FUNC18(buffer, "Line out: %s\n", (hdsp->control_register & HDSP_LineOut) ? "on" : "off");

	FUNC18(buffer, "Firmware version: %d\n", (status2&HDSP_version0)|(status2&HDSP_version1)<<1|(status2&HDSP_version2)<<2);

	FUNC18(buffer, "\n");

	switch (FUNC4(hdsp)) {
	case HDSP_CLOCK_SOURCE_AUTOSYNC:
		clock_source = "AutoSync";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_32KHZ:
		clock_source = "Internal 32 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_44_1KHZ:
		clock_source = "Internal 44.1 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_48KHZ:
		clock_source = "Internal 48 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_64KHZ:
		clock_source = "Internal 64 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_88_2KHZ:
		clock_source = "Internal 88.2 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_96KHZ:
		clock_source = "Internal 96 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_128KHZ:
		clock_source = "Internal 128 kHz";
		break;
	case HDSP_CLOCK_SOURCE_INTERNAL_176_4KHZ:
		clock_source = "Internal 176.4 kHz";
		break;
		case HDSP_CLOCK_SOURCE_INTERNAL_192KHZ:
		clock_source = "Internal 192 kHz";
		break;
	default:
		clock_source = "Error";
	}
	FUNC18 (buffer, "Sample Clock Source: %s\n", clock_source);

	if (FUNC15(hdsp))
		system_clock_mode = "Slave";
	else
		system_clock_mode = "Master";

	switch (FUNC10 (hdsp)) {
	case HDSP_SYNC_FROM_WORD:
		pref_sync_ref = "Word Clock";
		break;
	case HDSP_SYNC_FROM_ADAT_SYNC:
		pref_sync_ref = "ADAT Sync";
		break;
	case HDSP_SYNC_FROM_SPDIF:
		pref_sync_ref = "SPDIF";
		break;
	case HDSP_SYNC_FROM_ADAT1:
		pref_sync_ref = "ADAT1";
		break;
	case HDSP_SYNC_FROM_ADAT2:
		pref_sync_ref = "ADAT2";
		break;
	case HDSP_SYNC_FROM_ADAT3:
		pref_sync_ref = "ADAT3";
		break;
	default:
		pref_sync_ref = "Word Clock";
		break;
	}
	FUNC18 (buffer, "Preferred Sync Reference: %s\n", pref_sync_ref);

	switch (FUNC1 (hdsp)) {
	case HDSP_AUTOSYNC_FROM_WORD:
		autosync_ref = "Word Clock";
		break;
	case HDSP_AUTOSYNC_FROM_ADAT_SYNC:
		autosync_ref = "ADAT Sync";
		break;
	case HDSP_AUTOSYNC_FROM_SPDIF:
		autosync_ref = "SPDIF";
		break;
	case HDSP_AUTOSYNC_FROM_NONE:
		autosync_ref = "None";
		break;
	case HDSP_AUTOSYNC_FROM_ADAT1:
		autosync_ref = "ADAT1";
		break;
	case HDSP_AUTOSYNC_FROM_ADAT2:
		autosync_ref = "ADAT2";
		break;
	case HDSP_AUTOSYNC_FROM_ADAT3:
		autosync_ref = "ADAT3";
		break;
	default:
		autosync_ref = "---";
		break;
	}
	FUNC18 (buffer, "AutoSync Reference: %s\n", autosync_ref);

	FUNC18 (buffer, "AutoSync Frequency: %d\n", FUNC7(hdsp));

	FUNC18 (buffer, "System Clock Mode: %s\n", system_clock_mode);

	FUNC18 (buffer, "System Clock Frequency: %d\n", hdsp->system_sample_rate);
	FUNC18 (buffer, "System Clock Locked: %s\n", hdsp->clock_source_locked ? "Yes" : "No");

	FUNC18(buffer, "\n");

	if (hdsp->io_type != RPM) {
		switch (FUNC13(hdsp)) {
		case HDSP_SPDIFIN_OPTICAL:
			FUNC18(buffer, "IEC958 input: Optical\n");
			break;
		case HDSP_SPDIFIN_COAXIAL:
			FUNC18(buffer, "IEC958 input: Coaxial\n");
			break;
		case HDSP_SPDIFIN_INTERNAL:
			FUNC18(buffer, "IEC958 input: Internal\n");
			break;
		case HDSP_SPDIFIN_AES:
			FUNC18(buffer, "IEC958 input: AES\n");
			break;
		default:
			FUNC18(buffer, "IEC958 input: ???\n");
			break;
		}
	}

	if (RPM == hdsp->io_type) {
		if (hdsp->control_register & HDSP_RPM_Bypass)
			FUNC18(buffer, "RPM Bypass: disabled\n");
		else
			FUNC18(buffer, "RPM Bypass: enabled\n");
		if (hdsp->control_register & HDSP_RPM_Disconnect)
			FUNC18(buffer, "RPM disconnected\n");
		else
			FUNC18(buffer, "RPM connected\n");

		switch (hdsp->control_register & HDSP_RPM_Inp12) {
		case HDSP_RPM_Inp12_Phon_6dB:
			FUNC18(buffer, "Input 1/2: Phono, 6dB\n");
			break;
		case HDSP_RPM_Inp12_Phon_0dB:
			FUNC18(buffer, "Input 1/2: Phono, 0dB\n");
			break;
		case HDSP_RPM_Inp12_Phon_n6dB:
			FUNC18(buffer, "Input 1/2: Phono, -6dB\n");
			break;
		case HDSP_RPM_Inp12_Line_0dB:
			FUNC18(buffer, "Input 1/2: Line, 0dB\n");
			break;
		case HDSP_RPM_Inp12_Line_n6dB:
			FUNC18(buffer, "Input 1/2: Line, -6dB\n");
			break;
		default:
			FUNC18(buffer, "Input 1/2: ???\n");
		}

		switch (hdsp->control_register & HDSP_RPM_Inp34) {
		case HDSP_RPM_Inp34_Phon_6dB:
			FUNC18(buffer, "Input 3/4: Phono, 6dB\n");
			break;
		case HDSP_RPM_Inp34_Phon_0dB:
			FUNC18(buffer, "Input 3/4: Phono, 0dB\n");
			break;
		case HDSP_RPM_Inp34_Phon_n6dB:
			FUNC18(buffer, "Input 3/4: Phono, -6dB\n");
			break;
		case HDSP_RPM_Inp34_Line_0dB:
			FUNC18(buffer, "Input 3/4: Line, 0dB\n");
			break;
		case HDSP_RPM_Inp34_Line_n6dB:
			FUNC18(buffer, "Input 3/4: Line, -6dB\n");
			break;
		default:
			FUNC18(buffer, "Input 3/4: ???\n");
		}

	} else {
		if (hdsp->control_register & HDSP_SPDIFOpticalOut)
			FUNC18(buffer, "IEC958 output: Coaxial & ADAT1\n");
		else
			FUNC18(buffer, "IEC958 output: Coaxial only\n");

		if (hdsp->control_register & HDSP_SPDIFProfessional)
			FUNC18(buffer, "IEC958 quality: Professional\n");
		else
			FUNC18(buffer, "IEC958 quality: Consumer\n");

		if (hdsp->control_register & HDSP_SPDIFEmphasis)
			FUNC18(buffer, "IEC958 emphasis: on\n");
		else
			FUNC18(buffer, "IEC958 emphasis: off\n");

		if (hdsp->control_register & HDSP_SPDIFNonAudio)
			FUNC18(buffer, "IEC958 NonAudio: on\n");
		else
			FUNC18(buffer, "IEC958 NonAudio: off\n");
		x = FUNC14(hdsp);
		if (x != 0)
			FUNC18(buffer, "IEC958 sample rate: %d\n", x);
		else
			FUNC18(buffer, "IEC958 sample rate: Error flag set\n");
	}
	FUNC18(buffer, "\n");

	/* Sync Check */
	x = status & HDSP_Sync0;
	if (status & HDSP_Lock0)
		FUNC18(buffer, "ADAT1: %s\n", x ? "Sync" : "Lock");
	else
		FUNC18(buffer, "ADAT1: No Lock\n");

	switch (hdsp->io_type) {
	case Digiface:
	case H9652:
		x = status & HDSP_Sync1;
		if (status & HDSP_Lock1)
			FUNC18(buffer, "ADAT2: %s\n", x ? "Sync" : "Lock");
		else
			FUNC18(buffer, "ADAT2: No Lock\n");
		x = status & HDSP_Sync2;
		if (status & HDSP_Lock2)
			FUNC18(buffer, "ADAT3: %s\n", x ? "Sync" : "Lock");
		else
			FUNC18(buffer, "ADAT3: No Lock\n");
		break;
	default:
		/* relax */
		break;
	}

	x = status & HDSP_SPDIFSync;
	if (status & HDSP_SPDIFErrorFlag)
		FUNC18 (buffer, "SPDIF: No Lock\n");
	else
		FUNC18 (buffer, "SPDIF: %s\n", x ? "Sync" : "Lock");

	x = status2 & HDSP_wc_sync;
	if (status2 & HDSP_wc_lock)
		FUNC18 (buffer, "Word Clock: %s\n", x ? "Sync" : "Lock");
	else
		FUNC18 (buffer, "Word Clock: No Lock\n");

	x = status & HDSP_TimecodeSync;
	if (status & HDSP_TimecodeLock)
		FUNC18(buffer, "ADAT Sync: %s\n", x ? "Sync" : "Lock");
	else
		FUNC18(buffer, "ADAT Sync: No Lock\n");

	FUNC18(buffer, "\n");

	/* Informations about H9632 specific controls */
	if (hdsp->io_type == H9632) {
		char *tmp;

		switch (FUNC0(hdsp)) {
		case 0:
			tmp = "-10 dBV";
			break;
		case 1:
			tmp = "+4 dBu";
			break;
		default:
			tmp = "Lo Gain";
			break;
		}
		FUNC18(buffer, "AD Gain : %s\n", tmp);

		switch (FUNC5(hdsp)) {
		case 0:
			tmp = "Hi Gain";
			break;
		case 1:
			tmp = "+4 dBu";
			break;
		default:
			tmp = "-10 dBV";
			break;
		}
		FUNC18(buffer, "DA Gain : %s\n", tmp);

		switch (FUNC9(hdsp)) {
		case 0:
			tmp = "0 dB";
			break;
		case 1:
			tmp = "-6 dB";
			break;
		default:
			tmp = "-12 dB";
			break;
		}
		FUNC18(buffer, "Phones Gain : %s\n", tmp);

		FUNC18(buffer, "XLR Breakout Cable : %s\n",
			FUNC16(hdsp, HDSP_XLRBreakoutCable) ?
			"yes" : "no");

		if (hdsp->control_register & HDSP_AnalogExtensionBoard)
			FUNC18(buffer, "AEB : on (ADAT1 internal)\n");
		else
			FUNC18(buffer, "AEB : off (ADAT1 external)\n");
		FUNC18(buffer, "\n");
	}

}