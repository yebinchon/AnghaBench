#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  PROG; int /*<<< orphan*/  AUXDSP; int /*<<< orphan*/  CODEC; int /*<<< orphan*/  ASIC; } ;
struct TYPE_10__ {TYPE_2__ firmware; } ;
struct snd_riptide {TYPE_7__* capture_substream; TYPE_5__** playback_substream; int /*<<< orphan*/  openstreams; TYPE_3__ firmware; struct cmdif* cif; scalar_t__ port; int /*<<< orphan*/  received_irqs; int /*<<< orphan*/  handled_irqs; int /*<<< orphan*/  device_id; TYPE_1__* card; } ;
struct snd_info_entry {struct snd_riptide* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct pcmhw {int /*<<< orphan*/ * intdec; int /*<<< orphan*/  source; int /*<<< orphan*/  mixer; int /*<<< orphan*/  id; } ;
struct cmdif {int /*<<< orphan*/  cmdtimemin; int /*<<< orphan*/  cmdtimemax; int /*<<< orphan*/  cmdtime; int /*<<< orphan*/  errcnt; int /*<<< orphan*/  cmdcnt; } ;
struct TYPE_14__ {TYPE_6__* runtime; } ;
struct TYPE_13__ {struct pcmhw* private_data; } ;
struct TYPE_12__ {TYPE_4__* runtime; } ;
struct TYPE_11__ {struct pcmhw* private_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int PLAYBACK_SUBSTREAMS ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,int,unsigned short*,unsigned short*) ; 
 int FUNC1 (struct cmdif*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdif*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void
FUNC5(struct snd_info_entry *entry,
		      struct snd_info_buffer *buffer)
{
	struct snd_riptide *chip = entry->private_data;
	struct pcmhw *data;
	int i;
	struct cmdif *cif = NULL;
	unsigned char p[256];
	unsigned short rval = 0, lval = 0;
	unsigned int rate;

	if (!chip)
		return;

	FUNC4(buffer, "%s\n\n", chip->card->longname);
	FUNC4(buffer, "Device ID: 0x%x\nReceived IRQs: (%ld)%ld\nPorts:",
		    chip->device_id, chip->handled_irqs, chip->received_irqs);
	for (i = 0; i < 64; i += 4)
		FUNC4(buffer, "%c%02x: %08x",
			    (i % 16) ? ' ' : '\n', i, FUNC3(chip->port + i));
	if ((cif = chip->cif)) {
		FUNC4(buffer,
			    "\nVersion: ASIC: %d CODEC: %d AUXDSP: %d PROG: %d",
			    chip->firmware.firmware.ASIC,
			    chip->firmware.firmware.CODEC,
			    chip->firmware.firmware.AUXDSP,
			    chip->firmware.firmware.PROG);
		FUNC4(buffer, "\nDigital mixer:");
		for (i = 0; i < 12; i++) {
			FUNC0(cif, i, &rval, &lval);
			FUNC4(buffer, "\n %d: %d %d", i, rval, lval);
		}
		FUNC4(buffer,
			    "\nARM Commands num: %d failed: %d time: %d max: %d min: %d",
			    cif->cmdcnt, cif->errcnt,
			    cif->cmdtime, cif->cmdtimemax, cif->cmdtimemin);
	}
	FUNC4(buffer, "\nOpen streams %d:\n", chip->openstreams);
	for (i = 0; i < PLAYBACK_SUBSTREAMS; i++) {
		if (chip->playback_substream[i]
		    && chip->playback_substream[i]->runtime
		    && (data =
			chip->playback_substream[i]->runtime->private_data)) {
			FUNC4(buffer,
				    "stream: %d mixer: %d source: %d (%d,%d)\n",
				    data->id, data->mixer, data->source,
				    data->intdec[0], data->intdec[1]);
			if (!(FUNC2(cif, data->intdec, &rate)))
				FUNC4(buffer, "rate: %d\n", rate);
		}
	}
	if (chip->capture_substream
	    && chip->capture_substream->runtime
	    && (data = chip->capture_substream->runtime->private_data)) {
		FUNC4(buffer,
			    "stream: %d mixer: %d source: %d (%d,%d)\n",
			    data->id, data->mixer,
			    data->source, data->intdec[0], data->intdec[1]);
		if (!(FUNC2(cif, data->intdec, &rate)))
			FUNC4(buffer, "rate: %d\n", rate);
	}
	FUNC4(buffer, "Paths:\n");
	i = FUNC1(cif, p);
	while (i >= 2) {
		i -= 2;
		FUNC4(buffer, "%x->%x ", p[i], p[i + 1]);
	}
	FUNC4(buffer, "\n");
}