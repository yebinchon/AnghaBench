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
struct snd_intelhad {int need_reset; } ;

/* Variables and functions */
 struct snd_pcm_substream* FUNC0 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static void FUNC3(struct snd_intelhad *intelhaddata)
{
	struct snd_pcm_substream *substream;

	/* Report UNDERRUN error to above layers */
	substream = FUNC0(intelhaddata);
	if (substream) {
		FUNC2(substream);
		FUNC1(intelhaddata);
	}
	intelhaddata->need_reset = true;
}