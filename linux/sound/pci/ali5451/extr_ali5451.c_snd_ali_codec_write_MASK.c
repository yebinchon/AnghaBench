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
struct snd_ac97 {int /*<<< orphan*/  num; struct snd_ali* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short AC97_GPIO_STATUS ; 
 int /*<<< orphan*/  ALI_AC97_GPIO ; 
 unsigned short ALI_AC97_GPIO_DATA_SHIFT ; 
 unsigned short ALI_AC97_GPIO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ali*,int /*<<< orphan*/ ,unsigned short,unsigned short) ; 

__attribute__((used)) static void FUNC4(struct snd_ac97 *ac97,
				unsigned short reg,
				unsigned short val )
{
	struct snd_ali *codec = ac97->private_data;

	FUNC1(codec->card->dev, "codec_write: reg=%xh data=%xh.\n", reg, val);
	if (reg == AC97_GPIO_STATUS) {
		FUNC2((val << ALI_AC97_GPIO_DATA_SHIFT) | ALI_AC97_GPIO_ENABLE,
		     FUNC0(codec, ALI_AC97_GPIO));
		return;
	}
	FUNC3(codec, ac97->num, reg, val);
	return ;
}