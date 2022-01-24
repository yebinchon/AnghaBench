#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_port_subscribe {int dummy; } ;
struct snd_rawmidi_params {int avail_min; int no_active_sensing; int /*<<< orphan*/  buffer_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  output; } ;
struct seq_midisynth {int /*<<< orphan*/  parser; TYPE_1__ output_rfile; int /*<<< orphan*/  subdevice; int /*<<< orphan*/  device; int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_RAWMIDI_LFLG_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  output_buffer_size ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct snd_rawmidi_params*) ; 

__attribute__((used)) static int FUNC6(void *private_data, struct snd_seq_port_subscribe *info)
{
	int err;
	struct seq_midisynth *msynth = private_data;
	struct snd_rawmidi_params params;

	/* open midi port */
	if ((err = FUNC3(msynth->card, msynth->device,
					   msynth->subdevice,
					   SNDRV_RAWMIDI_LFLG_OUTPUT,
					   &msynth->output_rfile)) < 0) {
		FUNC1("ALSA: seq_midi: midi output open failed!!!\n");
		return err;
	}
	FUNC0(&params, 0, sizeof(params));
	params.avail_min = 1;
	params.buffer_size = output_buffer_size;
	params.no_active_sensing = 1;
	if ((err = FUNC5(msynth->output_rfile.output, &params)) < 0) {
		FUNC4(&msynth->output_rfile);
		return err;
	}
	FUNC2(msynth->parser);
	return 0;
}