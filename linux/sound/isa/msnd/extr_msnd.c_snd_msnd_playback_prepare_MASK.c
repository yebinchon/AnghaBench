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
struct snd_pcm_substream {int dummy; } ;
struct snd_msnd {scalar_t__ playDMAPos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_msnd*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_msnd* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_msnd *chip = FUNC3(substream);
	unsigned int pcm_size = FUNC1(substream);
	unsigned int pcm_count = FUNC2(substream);
	unsigned int pcm_periods = pcm_size / pcm_count;

	FUNC0(chip, pcm_periods, pcm_count);
	chip->playDMAPos = 0;
	return 0;
}