#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  stop; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct snd_ali {TYPE_3__ chregs; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_ali *codec, unsigned int channel)
{
	unsigned int mask = 1 << (channel & 0x1f);

	FUNC1(codec->card->dev, "stop_voice: channel=%d\n", channel);
	FUNC2(mask, FUNC0(codec, codec->chregs.regs.stop));
}