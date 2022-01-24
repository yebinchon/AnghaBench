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
struct intel8x0m {int /*<<< orphan*/ * ichd; } ;

/* Variables and functions */
 size_t ICHD_MDMIN ; 
 int FUNC0 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct intel8x0m* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct intel8x0m *chip = FUNC1(substream);

	return FUNC0(substream, &chip->ichd[ICHD_MDMIN]);
}