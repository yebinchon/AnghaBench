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
struct snd_cs4231 {int calibrate_mute; int* image; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t CS4231_AUX1_LEFT_INPUT ; 
 size_t CS4231_AUX1_RIGHT_INPUT ; 
 size_t CS4231_AUX2_LEFT_INPUT ; 
 size_t CS4231_AUX2_RIGHT_INPUT ; 
 size_t CS4231_LEFT_INPUT ; 
 size_t CS4231_LEFT_LINE_IN ; 
 size_t CS4231_LEFT_OUTPUT ; 
 size_t CS4231_LOOPBACK ; 
 size_t CS4231_MONO_CTRL ; 
 size_t CS4231_RIGHT_INPUT ; 
 size_t CS4231_RIGHT_LINE_IN ; 
 size_t CS4231_RIGHT_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_cs4231 *chip, int mute)
{
	unsigned long flags;

	mute = mute ? 1 : 0;
	FUNC1(&chip->lock, flags);
	if (chip->calibrate_mute == mute) {
		FUNC2(&chip->lock, flags);
		return;
	}
	if (!mute) {
		FUNC0(chip, CS4231_LEFT_INPUT,
				chip->image[CS4231_LEFT_INPUT]);
		FUNC0(chip, CS4231_RIGHT_INPUT,
				chip->image[CS4231_RIGHT_INPUT]);
		FUNC0(chip, CS4231_LOOPBACK,
				chip->image[CS4231_LOOPBACK]);
	}
	FUNC0(chip, CS4231_AUX1_LEFT_INPUT,
			mute ? 0x80 : chip->image[CS4231_AUX1_LEFT_INPUT]);
	FUNC0(chip, CS4231_AUX1_RIGHT_INPUT,
			mute ? 0x80 : chip->image[CS4231_AUX1_RIGHT_INPUT]);
	FUNC0(chip, CS4231_AUX2_LEFT_INPUT,
			mute ? 0x80 : chip->image[CS4231_AUX2_LEFT_INPUT]);
	FUNC0(chip, CS4231_AUX2_RIGHT_INPUT,
			mute ? 0x80 : chip->image[CS4231_AUX2_RIGHT_INPUT]);
	FUNC0(chip, CS4231_LEFT_OUTPUT,
			mute ? 0x80 : chip->image[CS4231_LEFT_OUTPUT]);
	FUNC0(chip, CS4231_RIGHT_OUTPUT,
			mute ? 0x80 : chip->image[CS4231_RIGHT_OUTPUT]);
	FUNC0(chip, CS4231_LEFT_LINE_IN,
			mute ? 0x80 : chip->image[CS4231_LEFT_LINE_IN]);
	FUNC0(chip, CS4231_RIGHT_LINE_IN,
			mute ? 0x80 : chip->image[CS4231_RIGHT_LINE_IN]);
	FUNC0(chip, CS4231_MONO_CTRL,
			mute ? 0xc0 : chip->image[CS4231_MONO_CTRL]);
	chip->calibrate_mute = mute;
	FUNC2(&chip->lock, flags);
}