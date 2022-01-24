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
struct dummy_systimer_pcm {struct snd_pcm_substream* substream; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {struct dummy_systimer_pcm* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dummy_systimer_callback ; 
 struct dummy_systimer_pcm* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct dummy_systimer_pcm *dpcm;

	dpcm = FUNC0(sizeof(*dpcm), GFP_KERNEL);
	if (!dpcm)
		return -ENOMEM;
	substream->runtime->private_data = dpcm;
	FUNC2(&dpcm->timer, dummy_systimer_callback, 0);
	FUNC1(&dpcm->lock);
	dpcm->substream = substream;
	return 0;
}