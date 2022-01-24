#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct echoaudio {int tinuse; int /*<<< orphan*/  timer; int /*<<< orphan*/  midi_full; int /*<<< orphan*/  lock; TYPE_2__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct echoaudio* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *substream,
					 int up)
{
	struct echoaudio *chip = substream->rmidi->private_data;

	FUNC1(chip->card->dev, "snd_echo_midi_output_trigger(%d)\n", up);
	FUNC3(&chip->lock);
	if (up) {
		if (!chip->tinuse) {
			FUNC5(&chip->timer, snd_echo_midi_output_write,
				    0);
			chip->tinuse = 1;
		}
	} else {
		if (chip->tinuse) {
			chip->tinuse = 0;
			FUNC4(&chip->lock);
			FUNC0(&chip->timer);
			FUNC1(chip->card->dev, "Timer removed\n");
			return;
		}
	}
	FUNC4(&chip->lock);

	if (up && !chip->midi_full)
		FUNC2(&chip->timer);
}