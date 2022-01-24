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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 unsigned short FUNC1 (struct snd_ali*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static unsigned short FUNC2(struct snd_ac97 *ac97,
					 unsigned short reg)
{
	struct snd_ali *codec = ac97->private_data;

	FUNC0(codec->card->dev, "codec_read reg=%xh.\n", reg);
	return FUNC1(codec, ac97->num, reg);
}