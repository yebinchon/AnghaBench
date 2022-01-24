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
struct snd_pmac {int /*<<< orphan*/  capture; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct snd_pmac* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_pmac_capture ; 
 int FUNC1 (struct snd_pmac*,int /*<<< orphan*/ *,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *subs)
{
	struct snd_pmac *chip = FUNC0(subs);

	subs->runtime->hw = snd_pmac_capture;
	return FUNC1(chip, &chip->capture, subs);
}