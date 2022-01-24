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
struct snd_uart16550 {int /*<<< orphan*/  card; } ;
struct snd_rawmidi {int info_flags; struct snd_uart16550* private_data; int /*<<< orphan*/ * streams; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int SNDRV_RAWMIDI_INFO_INPUT ; 
 int SNDRV_RAWMIDI_INFO_OUTPUT ; 
 size_t SNDRV_RAWMIDI_STREAM_INPUT ; 
 size_t SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,struct snd_rawmidi**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rawmidi*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_uart16550_input ; 
 int /*<<< orphan*/  snd_uart16550_output ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct snd_uart16550 *uart, int device,
			       int outs, int ins,
			       struct snd_rawmidi **rmidi)
{
	struct snd_rawmidi *rrawmidi;
	int err;

	err = FUNC0(uart->card, "UART Serial MIDI", device,
			      outs, ins, &rrawmidi);
	if (err < 0)
		return err;
	FUNC1(rrawmidi, SNDRV_RAWMIDI_STREAM_INPUT,
			    &snd_uart16550_input);
	FUNC1(rrawmidi, SNDRV_RAWMIDI_STREAM_OUTPUT,
			    &snd_uart16550_output);
	FUNC3(rrawmidi->name, "Serial MIDI");
	FUNC2(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_OUTPUT]);
	FUNC2(&rrawmidi->streams[SNDRV_RAWMIDI_STREAM_INPUT]);
	rrawmidi->info_flags = SNDRV_RAWMIDI_INFO_OUTPUT |
			       SNDRV_RAWMIDI_INFO_INPUT |
			       SNDRV_RAWMIDI_INFO_DUPLEX;
	rrawmidi->private_data = uart;
	if (rmidi)
		*rmidi = rrawmidi;
	return 0;
}