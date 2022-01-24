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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_m3 {int /*<<< orphan*/  reg_lock; } ;
struct m3_dma {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {struct m3_dma* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ; 
 struct snd_m3* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC6(struct snd_pcm_substream *subs)
{
	struct snd_m3 *chip = FUNC3(subs);
	unsigned int ptr;
	struct m3_dma *s = subs->runtime->private_data;

	if (FUNC1(!s))
		return 0;

	FUNC4(&chip->reg_lock);
	ptr = FUNC2(chip, s, subs);
	FUNC5(&chip->reg_lock);
	return FUNC0(subs->runtime, ptr);
}