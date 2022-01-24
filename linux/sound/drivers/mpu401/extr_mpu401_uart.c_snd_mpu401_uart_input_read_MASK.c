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
struct snd_mpu401 {unsigned char (* read ) (struct snd_mpu401*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  substream_input; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  MPU401_MODE_BIT_INPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 unsigned char FUNC3 (struct snd_mpu401*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_mpu401 * mpu)
{
	int max = 128;
	unsigned char byte;

	while (max-- > 0) {
		if (! FUNC1(mpu))
			break; /* input not available */
		byte = mpu->read(mpu, FUNC0(mpu));
		if (FUNC4(MPU401_MODE_BIT_INPUT_TRIGGER, &mpu->mode))
			FUNC2(mpu->substream_input, &byte, 1);
	}
}