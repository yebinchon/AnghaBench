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
struct snd_ali {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_STIMER ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_ali *codec)
{
	unsigned long end_time;
	unsigned long dwChk1,dwChk2;
	
	dwChk1 = FUNC3(codec, ALI_STIMER);
	end_time = jiffies + FUNC1(250);

	for (;;) {
		dwChk2 = FUNC3(codec, ALI_STIMER);
		if (dwChk2 != dwChk1)
			return 0;
		if (!FUNC4(end_time, jiffies))
			break;
		FUNC2(1);
	}

	FUNC0(codec->card->dev, "ali_stimer_read: stimer is not ready.\n");
	return -EIO;
}