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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (struct snd_ali*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ali*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_ali *codec,
			       unsigned int port)
{
	unsigned long end_time;
	unsigned int res;
	
	end_time = jiffies + FUNC1(250);

	for (;;) {
		res = FUNC3(codec,port);
		if (!(res & 0x8000))
			return 0;
		if (!FUNC5(end_time, jiffies))
			break;
		FUNC2(1);
	}

	FUNC4(codec, port, res & ~0x8000);
	FUNC0(codec->card->dev, "ali_codec_ready: codec is not ready.\n ");
	return -EIO;
}