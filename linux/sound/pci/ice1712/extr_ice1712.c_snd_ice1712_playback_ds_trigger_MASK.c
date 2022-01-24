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
typedef  int u32 ;
struct snd_pcm_substream {int number; } ;
struct snd_ice1712 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ICE1712_DSC_CONTROL ; 
 int SNDRV_PCM_TRIGGER_PAUSE_PUSH ; 
 int SNDRV_PCM_TRIGGER_PAUSE_RELEASE ; 
 int SNDRV_PCM_TRIGGER_START ; 
 int SNDRV_PCM_TRIGGER_STOP ; 
 int FUNC0 (struct snd_ice1712*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int,int /*<<< orphan*/ ,int) ; 
 struct snd_ice1712* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
					   int cmd)
{
	struct snd_ice1712 *ice = FUNC2(substream);
	int result = 0;
	u32 tmp;

	FUNC3(&ice->reg_lock);
	tmp = FUNC0(ice, substream->number * 2, ICE1712_DSC_CONTROL);
	if (cmd == SNDRV_PCM_TRIGGER_START) {
		tmp |= 1;
	} else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
		tmp &= ~1;
	} else if (cmd == SNDRV_PCM_TRIGGER_PAUSE_PUSH) {
		tmp |= 2;
	} else if (cmd == SNDRV_PCM_TRIGGER_PAUSE_RELEASE) {
		tmp &= ~2;
	} else {
		result = -EINVAL;
	}
	FUNC1(ice, substream->number * 2, ICE1712_DSC_CONTROL, tmp);
	FUNC4(&ice->reg_lock);
	return result;
}