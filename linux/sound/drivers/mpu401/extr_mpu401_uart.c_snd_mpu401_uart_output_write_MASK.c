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
struct snd_mpu401 {int /*<<< orphan*/  substream_output; int /*<<< orphan*/  (* write ) (struct snd_mpu401*,unsigned char,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mpu401*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mpu401*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mpu401*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct snd_mpu401 * mpu)
{
	unsigned char byte;
	int max = 256;

	do {
		if (FUNC4(mpu->substream_output,
					      &byte, 1) == 1) {
			/*
			 * Try twice because there is hardware that insists on
			 * setting the output busy bit after each write.
			 */
			if (!FUNC1(mpu) &&
			    !FUNC1(mpu))
				break;	/* Tx FIFO full - try again later */
			mpu->write(mpu, byte, FUNC0(mpu));
			FUNC3(mpu->substream_output, 1);
		} else {
			FUNC2 (mpu, 0);
			break;	/* no other data - leave the tx loop */
		}
	} while (--max > 0);
}