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
struct soundscape {int dummy; } ;
struct snd_rawmidi {struct snd_mpu401* private_data; } ;
struct snd_mpu401 {struct soundscape* private_data; void* open_output; void* open_input; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU401_HW_MPU401 ; 
 int /*<<< orphan*/  MPU401_INFO_INTEGRATED ; 
 struct soundscape* FUNC0 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mpu401*) ; 
 void* mpu401_open ; 
 int FUNC2 (struct snd_card*,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,struct snd_rawmidi**) ; 

__attribute__((used)) static int FUNC3(struct snd_card *card, int devnum,
			 unsigned long port, int irq)
{
	struct soundscape *sscape = FUNC0(card);
	struct snd_rawmidi *rawmidi;
	int err;

	err = FUNC2(card, devnum, MPU401_HW_MPU401, port,
				  MPU401_INFO_INTEGRATED, irq, &rawmidi);
	if (err == 0) {
		struct snd_mpu401 *mpu = rawmidi->private_data;
		mpu->open_input = mpu401_open;
		mpu->open_output = mpu401_open;
		mpu->private_data = sscape;

		FUNC1(mpu);
	}

	return err;
}