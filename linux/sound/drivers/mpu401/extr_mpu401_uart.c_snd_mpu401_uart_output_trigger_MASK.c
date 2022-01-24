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
struct snd_mpu401 {int info_flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  output_lock; } ;
struct TYPE_2__ {struct snd_mpu401* private_data; } ;

/* Variables and functions */
 int MPU401_INFO_TX_IRQ ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_OUTPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mpu401*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_mpu401*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct snd_mpu401 *mpu;

	mpu = substream->rmidi->private_data;
	if (up) {
		FUNC1(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode);

		/* try to add the timer at each output trigger,
		 * since the output timer might have been removed in
		 * snd_mpu401_uart_output_write().
		 */
		if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))
			FUNC2(mpu, 0);

		/* output pending data */
		FUNC5(&mpu->output_lock, flags);
		FUNC3(mpu);
		FUNC6(&mpu->output_lock, flags);
	} else {
		if (! (mpu->info_flags & MPU401_INFO_TX_IRQ))
			FUNC4(mpu, 0);
		FUNC0(MPU401_MODE_BIT_OUTPUT_TRIGGER, &mpu->mode);
	}
}