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
struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {int control_register; int /*<<< orphan*/  system_sample_rate; scalar_t__ period_bytes; int /*<<< orphan*/  control2_register; int /*<<< orphan*/  irq_count; scalar_t__ iobase; int /*<<< orphan*/  port; int /*<<< orphan*/  irq; int /*<<< orphan*/  serial; int /*<<< orphan*/  firmware_rev; TYPE_1__* card; int /*<<< orphan*/  card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 unsigned int HDSPM_AB_int ; 
#define  HDSPM_AUTOSYNC_FROM_MADI 136 
#define  HDSPM_AUTOSYNC_FROM_NONE 135 
#define  HDSPM_AUTOSYNC_FROM_SYNC_IN 134 
#define  HDSPM_AUTOSYNC_FROM_TCO 133 
#define  HDSPM_AUTOSYNC_FROM_WORD 132 
 int HDSPM_AutoInp ; 
 unsigned int HDSPM_BufferID ; 
 unsigned int HDSPM_BufferPositionMask ; 
 int HDSPM_ClockModeMaster ; 
 int HDSPM_LineOut ; 
 unsigned int HDSPM_RX_64ch ; 
#define  HDSPM_SYNC_FROM_MADI 131 
#define  HDSPM_SYNC_FROM_SYNC_IN 130 
#define  HDSPM_SYNC_FROM_TCO 129 
#define  HDSPM_SYNC_FROM_WORD 128 
 int HDSPM_TX_64ch ; 
 unsigned int HDSPM_audioIRQPending ; 
 int HDSPM_clr_tms ; 
 unsigned int HDSPM_madiFreqMask ; 
 unsigned int HDSPM_madiLock ; 
 unsigned int HDSPM_madiSync ; 
 unsigned int HDSPM_midi0IRQPending ; 
 unsigned int HDSPM_midi1IRQPending ; 
 int /*<<< orphan*/  HDSPM_midiStatusIn0 ; 
 int /*<<< orphan*/  HDSPM_midiStatusIn1 ; 
 int /*<<< orphan*/  HDSPM_midiStatusIn2 ; 
 int /*<<< orphan*/  HDSPM_midiStatusOut0 ; 
 int /*<<< orphan*/  HDSPM_midiStatusOut1 ; 
 int /*<<< orphan*/  HDSPM_midiStatusOut2 ; 
 int /*<<< orphan*/  HDSPM_statusRegister ; 
 int /*<<< orphan*/  HDSPM_statusRegister2 ; 
 unsigned int HDSPM_version0 ; 
 unsigned int HDSPM_version1 ; 
 unsigned int HDSPM_version2 ; 
 unsigned int HDSPM_wcFreqMask ; 
 unsigned int HDSPM_wcLock ; 
 unsigned int HDSPM_wcSync ; 
 int FUNC0 (struct hdspm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdspm*) ; 
 int FUNC2 (struct hdspm*) ; 
 scalar_t__ FUNC3 (struct hdspm*) ; 
 int FUNC4 (struct hdspm*) ; 
 int FUNC5 (struct hdspm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_entry*,struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void
FUNC8(struct snd_info_entry *entry,
			 struct snd_info_buffer *buffer)
{
	struct hdspm *hdspm = entry->private_data;
	unsigned int status, status2;

	char *pref_sync_ref;
	char *autosync_ref;
	char *system_clock_mode;
	int x, x2;

	status = FUNC5(hdspm, HDSPM_statusRegister);
	status2 = FUNC5(hdspm, HDSPM_statusRegister2);

	FUNC7(buffer, "%s (Card #%d) Rev.%x Status2first3bits: %x\n",
			hdspm->card_name, hdspm->card->number + 1,
			hdspm->firmware_rev,
			(status2 & HDSPM_version0) |
			(status2 & HDSPM_version1) | (status2 &
				HDSPM_version2));

	FUNC7(buffer, "HW Serial: 0x%06x%06x\n",
			(FUNC5(hdspm, HDSPM_midiStatusIn1)>>8) & 0xFFFFFF,
			hdspm->serial);

	FUNC7(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
			hdspm->irq, hdspm->port, (unsigned long)hdspm->iobase);

	FUNC7(buffer, "--- System ---\n");

	FUNC7(buffer,
		"IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\n",
		status & HDSPM_audioIRQPending,
		(status & HDSPM_midi0IRQPending) ? 1 : 0,
		(status & HDSPM_midi1IRQPending) ? 1 : 0,
		hdspm->irq_count);
	FUNC7(buffer,
		"HW pointer: id = %d, rawptr = %d (%d->%d) "
		"estimated= %ld (bytes)\n",
		((status & HDSPM_BufferID) ? 1 : 0),
		(status & HDSPM_BufferPositionMask),
		(status & HDSPM_BufferPositionMask) %
		(2 * (int)hdspm->period_bytes),
		((status & HDSPM_BufferPositionMask) - 64) %
		(2 * (int)hdspm->period_bytes),
		(long) FUNC3(hdspm) * 4);

	FUNC7(buffer,
		"MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \n",
		FUNC5(hdspm, HDSPM_midiStatusOut0) & 0xFF,
		FUNC5(hdspm, HDSPM_midiStatusOut1) & 0xFF,
		FUNC5(hdspm, HDSPM_midiStatusIn0) & 0xFF,
		FUNC5(hdspm, HDSPM_midiStatusIn1) & 0xFF);
	FUNC7(buffer,
		"MIDIoverMADI FIFO: In=0x%x, Out=0x%x \n",
		FUNC5(hdspm, HDSPM_midiStatusIn2) & 0xFF,
		FUNC5(hdspm, HDSPM_midiStatusOut2) & 0xFF);
	FUNC7(buffer,
		"Register: ctrl1=0x%x, ctrl2=0x%x, status1=0x%x, "
		"status2=0x%x\n",
		hdspm->control_register, hdspm->control2_register,
		status, status2);


	FUNC7(buffer, "--- Settings ---\n");

	x = FUNC2(hdspm);

	FUNC7(buffer,
		"Size (Latency): %d samples (2 periods of %lu bytes)\n",
		x, (unsigned long) hdspm->period_bytes);

	FUNC7(buffer, "Line out: %s\n",
		(hdspm->control_register & HDSPM_LineOut) ? "on " : "off");

	FUNC7(buffer,
		"ClearTrackMarker = %s, Transmit in %s Channel Mode, "
		"Auto Input %s\n",
		(hdspm->control_register & HDSPM_clr_tms) ? "on" : "off",
		(hdspm->control_register & HDSPM_TX_64ch) ? "64" : "56",
		(hdspm->control_register & HDSPM_AutoInp) ? "on" : "off");


	if (!(hdspm->control_register & HDSPM_ClockModeMaster))
		system_clock_mode = "AutoSync";
	else
		system_clock_mode = "Master";
	FUNC7(buffer, "AutoSync Reference: %s\n", system_clock_mode);

	switch (FUNC4(hdspm)) {
	case HDSPM_SYNC_FROM_WORD:
		pref_sync_ref = "Word Clock";
		break;
	case HDSPM_SYNC_FROM_MADI:
		pref_sync_ref = "MADI Sync";
		break;
	case HDSPM_SYNC_FROM_TCO:
		pref_sync_ref = "TCO";
		break;
	case HDSPM_SYNC_FROM_SYNC_IN:
		pref_sync_ref = "Sync In";
		break;
	default:
		pref_sync_ref = "XXXX Clock";
		break;
	}
	FUNC7(buffer, "Preferred Sync Reference: %s\n",
			pref_sync_ref);

	FUNC7(buffer, "System Clock Frequency: %d\n",
			hdspm->system_sample_rate);


	FUNC7(buffer, "--- Status:\n");

	x = status & HDSPM_madiSync;
	x2 = status2 & HDSPM_wcSync;

	FUNC7(buffer, "Inputs MADI=%s, WordClock=%s\n",
			(status & HDSPM_madiLock) ? (x ? "Sync" : "Lock") :
			"NoLock",
			(status2 & HDSPM_wcLock) ? (x2 ? "Sync" : "Lock") :
			"NoLock");

	switch (FUNC0(hdspm)) {
	case HDSPM_AUTOSYNC_FROM_SYNC_IN:
		autosync_ref = "Sync In";
		break;
	case HDSPM_AUTOSYNC_FROM_TCO:
		autosync_ref = "TCO";
		break;
	case HDSPM_AUTOSYNC_FROM_WORD:
		autosync_ref = "Word Clock";
		break;
	case HDSPM_AUTOSYNC_FROM_MADI:
		autosync_ref = "MADI Sync";
		break;
	case HDSPM_AUTOSYNC_FROM_NONE:
		autosync_ref = "Input not valid";
		break;
	default:
		autosync_ref = "---";
		break;
	}
	FUNC7(buffer,
		"AutoSync: Reference= %s, Freq=%d (MADI = %d, Word = %d)\n",
		autosync_ref, FUNC1(hdspm),
		(status & HDSPM_madiFreqMask) >> 22,
		(status2 & HDSPM_wcFreqMask) >> 5);

	FUNC7(buffer, "Input: %s, Mode=%s\n",
		(status & HDSPM_AB_int) ? "Coax" : "Optical",
		(status & HDSPM_RX_64ch) ? "64 channels" :
		"56 channels");

	/* call readout function for TCO specific status */
	FUNC6(entry, buffer);

	FUNC7(buffer, "\n");
}