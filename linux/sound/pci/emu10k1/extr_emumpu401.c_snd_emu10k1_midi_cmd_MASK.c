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
struct snd_emu10k1_midi {int /*<<< orphan*/  input_lock; } ;
struct snd_emu10k1 {int /*<<< orphan*/  port; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MPU401_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct snd_emu10k1*,struct snd_emu10k1_midi*) ; 
 scalar_t__ FUNC2 (struct snd_emu10k1*,struct snd_emu10k1_midi*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,struct snd_emu10k1_midi*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,struct snd_emu10k1_midi*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_midi*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_emu10k1 * emu, struct snd_emu10k1_midi *midi, unsigned char cmd, int ack)
{
	unsigned long flags;
	int timeout, ok;

	FUNC6(&midi->input_lock, flags);
	FUNC5(emu, midi, 0x00);
	/* mpu401_clear_rx(emu, midi); */

	FUNC4(emu, midi, cmd);
	if (ack) {
		ok = 0;
		timeout = 10000;
		while (!ok && timeout-- > 0) {
			if (FUNC1(emu, midi)) {
				if (FUNC2(emu, midi) == MPU401_ACK)
					ok = 1;
			}
		}
		if (!ok && FUNC2(emu, midi) == MPU401_ACK)
			ok = 1;
	} else {
		ok = 1;
	}
	FUNC7(&midi->input_lock, flags);
	if (!ok) {
		FUNC0(emu->card->dev,
			"midi_cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)!!!\n",
			   cmd, emu->port,
			   FUNC3(emu, midi),
			   FUNC2(emu, midi));
		return 1;
	}
	return 0;
}