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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_mpu401 {int (* open_output ) (struct snd_mpu401*) ;int /*<<< orphan*/  (* close_output ) (struct snd_mpu401*) ;int /*<<< orphan*/  mode; struct snd_rawmidi_substream* substream_output; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_INPUT ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct snd_mpu401*) ; 
 int FUNC2 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi_substream *substream)
{
	struct snd_mpu401 *mpu;
	int err;

	mpu = substream->rmidi->private_data;
	if (mpu->open_output && (err = mpu->open_output(mpu)) < 0)
		return err;
	if (! FUNC4(MPU401_MODE_BIT_INPUT, &mpu->mode)) {
		if (FUNC1(mpu) < 0)
			goto error_out;
	}
	mpu->substream_output = substream;
	FUNC0(MPU401_MODE_BIT_OUTPUT, &mpu->mode);
	return 0;

error_out:
	if (mpu->open_output && mpu->close_output)
		mpu->close_output(mpu);
	return -EIO;
}