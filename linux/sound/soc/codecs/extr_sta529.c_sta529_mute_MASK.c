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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_MUTE_MSK ; 
 int /*<<< orphan*/  CODEC_MUTE_VAL ; 
 int /*<<< orphan*/  STA529_FFXCFG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *dai, int mute)
{
	u8 val = 0;

	if (mute)
		val |= CODEC_MUTE_VAL;

	FUNC0(dai->component, STA529_FFXCFG0, AUDIO_MUTE_MSK, val);

	return 0;
}