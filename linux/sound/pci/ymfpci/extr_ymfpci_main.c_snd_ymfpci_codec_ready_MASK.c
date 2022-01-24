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
typedef  int /*<<< orphan*/  u32 ;
struct snd_ymfpci {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  YDSXGR_PRISTATUSADR ; 
 int /*<<< orphan*/  YDSXGR_SECSTATUSADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_ymfpci *chip, int secondary)
{
	unsigned long end_time;
	u32 reg = secondary ? YDSXGR_SECSTATUSADR : YDSXGR_PRISTATUSADR;
	
	end_time = jiffies + FUNC1(750);
	do {
		if ((FUNC3(chip, reg) & 0x8000) == 0)
			return 0;
		FUNC2(1);
	} while (FUNC4(jiffies, end_time));
	FUNC0(chip->card->dev,
		"codec_ready: codec %i is not ready [0x%x]\n",
		secondary, FUNC3(chip, reg));
	return -EBUSY;
}