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
struct TYPE_6__ {unsigned int ac97read; } ;
struct TYPE_4__ {TYPE_3__ regs; } ;
struct snd_ali {TYPE_1__ chregs; TYPE_2__* card; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int FUNC1 (struct snd_ali*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ali*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct snd_ali*,unsigned int) ; 
 scalar_t__ FUNC4 (struct snd_ali*) ; 

__attribute__((used)) static unsigned short FUNC5(struct snd_ali *codec,
					 int secondary,
					 unsigned short reg)
{
	unsigned int dwVal;
	unsigned int port;

	if (reg >= 0x80) {
		FUNC0(codec->card->dev,
			"ali_codec_peek: reg(%xh) invalid.\n", reg);
		return ~0;
	}

	port = codec->chregs.regs.ac97read;

	if (FUNC3(codec, port) < 0)
		return ~0;
	if (FUNC4(codec) < 0)
		return ~0;

	dwVal  = (unsigned int) (reg & 0xff);
	dwVal |= 0x8000;				/* bit 15*/
	if (secondary)
		dwVal |= 0x0080;

	FUNC2(codec, port, dwVal);

	if (FUNC4(codec) < 0)
		return ~0;
	if (FUNC3(codec, port) < 0)
		return ~0;
	
	return (FUNC1(codec, port) & 0xffff0000) >> 16;
}