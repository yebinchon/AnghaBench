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
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  scalar_t__ snd_pcm_sframes_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_sframes_t FUNC5(struct snd_pcm_substream *substream,
					snd_pcm_uframes_t frames)
{
	snd_pcm_sframes_t ret;

	if (frames == 0)
		return 0;

	FUNC3(substream);
	ret = FUNC0(substream);
	if (!ret)
		ret = FUNC1(substream, frames,
				      FUNC2(substream));
	FUNC4(substream);
	return ret;
}