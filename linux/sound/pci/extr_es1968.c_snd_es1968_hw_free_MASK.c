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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct esschan* private_data; } ;
struct esschan {int /*<<< orphan*/ * memory; } ;
struct es1968 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es1968*,int /*<<< orphan*/ *) ; 
 struct es1968* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct es1968 *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct esschan *chan;
	
	if (runtime->private_data == NULL)
		return 0;
	chan = runtime->private_data;
	if (chan->memory) {
		FUNC0(chip, chan->memory);
		chan->memory = NULL;
	}
	return 0;
}