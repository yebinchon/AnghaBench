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
struct snd_aw2_saa7146 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACON1 ; 
 int /*<<< orphan*/  MC1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int TR_E_A1_OUT ; 
 int TR_E_A2_OUT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int WS1_CTRL ; 
 int WS2_CTRL ; 

void FUNC2(struct snd_aw2_saa7146 *chip,
						int stream_number)
{
	unsigned int acon1 = 0;
	/* In aw8 driver, dma transfert is always active. It is
	   started and stopped in a larger "space" */
	acon1 = FUNC0(ACON1);
	if (stream_number == 0) {
		FUNC1((TR_E_A2_OUT << 16) | TR_E_A2_OUT, MC1);

		/* WS2_CTRL, WS2_SYNC: output TSL2, I2S */
		acon1 |= 2 * WS2_CTRL;
		FUNC1(acon1, ACON1);

	} else if (stream_number == 1) {
		FUNC1((TR_E_A1_OUT << 16) | TR_E_A1_OUT, MC1);

		/* WS1_CTRL, WS1_SYNC: output TSL1, I2S */
		acon1 |= 1 * WS1_CTRL;
		FUNC1(acon1, ACON1);
	}
}