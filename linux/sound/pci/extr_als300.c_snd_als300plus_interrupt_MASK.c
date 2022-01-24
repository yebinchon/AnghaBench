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
typedef  int u8 ;
struct snd_als300_substream_data {int period_flipflop; } ;
struct snd_als300 {TYPE_2__* capture_substream; scalar_t__ port; scalar_t__ pcm; TYPE_2__* playback_substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {struct snd_als300_substream_data* private_data; } ;

/* Variables and functions */
 scalar_t__ ALS300P_DRAM_IRQ_STATUS ; 
 scalar_t__ ALS300P_IRQ_STATUS ; 
 int IRQ_CAPTURE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_PLAYBACK ; 
 scalar_t__ MPU_IRQ_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	u8 general, mpu, dram;
	struct snd_als300 *chip = dev_id;
	struct snd_als300_substream_data *data;
	
	general = FUNC0(chip->port+ALS300P_IRQ_STATUS);
	mpu = FUNC0(chip->port+MPU_IRQ_STATUS);
	dram = FUNC0(chip->port+ALS300P_DRAM_IRQ_STATUS);

	/* shared IRQ, for different device?? Exit ASAP! */
	if ((general == 0) && ((mpu & 0x80) == 0) && ((dram & 0x01) == 0))
		return IRQ_NONE;

	if (general & IRQ_PLAYBACK) {
		if (chip->pcm && chip->playback_substream) {
			FUNC1(IRQ_PLAYBACK, chip->port+ALS300P_IRQ_STATUS);
			data = chip->playback_substream->runtime->private_data;
			data->period_flipflop ^= 1;
			FUNC3(chip->playback_substream);
			FUNC2("IRQ_PLAYBACK\n");
		}
	}
	if (general & IRQ_CAPTURE) {
		if (chip->pcm && chip->capture_substream) {
			FUNC1(IRQ_CAPTURE, chip->port+ALS300P_IRQ_STATUS);
			data = chip->capture_substream->runtime->private_data;
			data->period_flipflop ^= 1;
			FUNC3(chip->capture_substream);
			FUNC2("IRQ_CAPTURE\n");
		}
	}
	/* FIXME: Ack other interrupt types. Not important right now as
	 * those other devices aren't enabled. */
	return IRQ_HANDLED;
}