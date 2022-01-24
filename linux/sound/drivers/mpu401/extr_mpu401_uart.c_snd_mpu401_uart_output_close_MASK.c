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
struct snd_mpu401 {int /*<<< orphan*/  (* close_output ) (struct snd_mpu401*) ;int /*<<< orphan*/  mode; int /*<<< orphan*/ * substream_output; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_INPUT ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_OUTPUT ; 
 int /*<<< orphan*/  MPU401_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_mpu401*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct snd_mpu401 *mpu;
	int err = 0;

	mpu = substream->rmidi->private_data;
	FUNC0(MPU401_MODE_BIT_OUTPUT, &mpu->mode);
	mpu->substream_output = NULL;
	if (! FUNC3(MPU401_MODE_BIT_INPUT, &mpu->mode))
		err = FUNC1(mpu, MPU401_RESET, 0);
	if (mpu->close_output)
		mpu->close_output(mpu);
	if (err)
		return -EIO;
	return 0;
}