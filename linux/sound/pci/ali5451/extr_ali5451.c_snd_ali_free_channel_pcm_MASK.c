#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int chmap; int /*<<< orphan*/  chcnt; } ;
struct snd_ali {TYPE_2__ synth; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALI_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ali *codec, int channel)
{
	unsigned int idx = channel & 0x0000001f;

	FUNC0(codec->card->dev, "free_channel_pcm channel=%d\n", channel);

	if (channel < 0 || channel >= ALI_CHANNELS)
		return;

	if (!(codec->synth.chmap & (1 << idx))) {
		FUNC1(codec->card->dev,
			"ali_free_channel_pcm: channel %d is not in use.\n",
			channel);
		return;
	} else {
		codec->synth.chmap &= ~(1 << idx);
		codec->synth.chcnt--;
	}
}