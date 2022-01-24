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
struct snd_mpu401 {int info_flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  input_lock; int /*<<< orphan*/  (* read ) (struct snd_mpu401*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 int MPU401_INFO_USE_TIMER ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_INPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mpu401*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mpu401*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_mpu401*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct snd_mpu401 *mpu;
	int max = 64;

	mpu = substream->rmidi->private_data;
	if (up) {
		if (! FUNC8(MPU401_MODE_BIT_INPUT_TRIGGER,
				       &mpu->mode)) {
			/* first time - flush FIFO */
			while (max-- > 0)
				mpu->read(mpu, FUNC0(mpu));
			if (mpu->info_flags & MPU401_INFO_USE_TIMER)
				FUNC2(mpu, 1);
		}
		
		/* read data in advance */
		FUNC5(&mpu->input_lock, flags);
		FUNC3(mpu);
		FUNC6(&mpu->input_lock, flags);
	} else {
		if (mpu->info_flags & MPU401_INFO_USE_TIMER)
			FUNC4(mpu, 1);
		FUNC1(MPU401_MODE_BIT_INPUT_TRIGGER, &mpu->mode);
	}

}