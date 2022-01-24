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
struct dummy_systimer_pcm {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {struct dummy_systimer_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct dummy_systimer_pcm *dpcm = substream->runtime->private_data;
	FUNC1(&dpcm->lock);
	FUNC0(&dpcm->timer);
	FUNC2(&dpcm->lock);
	return 0;
}