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
struct via82xx {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int VIA_REG_AC97_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 unsigned int FUNC1 (struct via82xx*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct via82xx *chip, int secondary)
{
	unsigned int timeout = 1000;	/* 1ms */
	unsigned int val;
	
	while (timeout-- > 0) {
		FUNC2(1);
		if (!((val = FUNC1(chip)) & VIA_REG_AC97_BUSY))
			return val & 0xffff;
	}
	FUNC0(chip->card->dev, "codec_ready: codec %i is not ready [0x%x]\n",
		   secondary, FUNC1(chip));
	return -EIO;
}