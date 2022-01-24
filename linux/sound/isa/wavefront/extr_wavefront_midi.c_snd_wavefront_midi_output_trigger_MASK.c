#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_2__* rmidi; } ;
typedef  size_t snd_wavefront_mpu_id ;
struct TYPE_7__ {int* mode; int /*<<< orphan*/  virtual; int /*<<< orphan*/  istimer; int /*<<< orphan*/  timer; } ;
typedef  TYPE_3__ snd_wavefront_midi_t ;
typedef  int /*<<< orphan*/  snd_wavefront_card_t ;
struct TYPE_6__ {TYPE_1__* card; int /*<<< orphan*/ * private_data; } ;
struct TYPE_5__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int MPU401_MODE_OUTPUT_TRIGGER ; 
 TYPE_3__* FUNC0 (struct snd_rawmidi_substream*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  snd_wavefront_midi_output_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	snd_wavefront_midi_t *midi;
	snd_wavefront_mpu_id mpu;

	if (substream == NULL || substream->rmidi == NULL) 
	        return;

	if (substream->rmidi->private_data == NULL)
	        return;

	mpu = *((snd_wavefront_mpu_id *) substream->rmidi->private_data);

	if ((midi = FUNC0 (substream)) == NULL) {
		return;
	}

	FUNC3 (&midi->virtual, flags);
	if (up) {
		if ((midi->mode[mpu] & MPU401_MODE_OUTPUT_TRIGGER) == 0) {
			if (!midi->istimer) {
				FUNC5(&midi->timer,
					    snd_wavefront_midi_output_timer,
					    0);
				FUNC1(&midi->timer, 1 + jiffies);
			}
			midi->istimer++;
			midi->mode[mpu] |= MPU401_MODE_OUTPUT_TRIGGER;
		}
	} else {
		midi->mode[mpu] &= ~MPU401_MODE_OUTPUT_TRIGGER;
	}
	FUNC4 (&midi->virtual, flags);

	if (up)
		FUNC2((snd_wavefront_card_t *)substream->rmidi->card->private_data);
}