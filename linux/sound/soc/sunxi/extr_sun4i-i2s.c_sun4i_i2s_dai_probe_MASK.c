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
struct sun4i_i2s {int /*<<< orphan*/  capture_dma_data; int /*<<< orphan*/  playback_dma_data; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 struct sun4i_i2s* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,struct sun4i_i2s*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct sun4i_i2s *i2s = FUNC0(dai);

	FUNC1(dai,
				  &i2s->playback_dma_data,
				  &i2s->capture_dma_data);

	FUNC2(dai, i2s);

	return 0;
}