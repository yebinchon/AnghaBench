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
struct timer_list {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; } ;
struct snd_card_aica {int current_period; int dma_check; int /*<<< orphan*/  spu_dma_work; int /*<<< orphan*/  timer; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AICA_CONTROL_CHANNEL_SAMPLE_NUMBER ; 
 int AICA_PERIOD_SIZE ; 
 struct snd_card_aica* dreamcastcard ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_card_aica* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct snd_card_aica *dreamcastcard = FUNC1(dreamcastcard,
							      t, timer);
	struct snd_pcm_substream *substream = dreamcastcard->substream;
	/*timer function - so cannot sleep */
	int play_period;
	struct snd_pcm_runtime *runtime;
	runtime = substream->runtime;
	dreamcastcard = substream->pcm->private_data;
	/* Have we played out an additional period? */
	play_period =
	    FUNC0(runtime,
			    FUNC3
			    (AICA_CONTROL_CHANNEL_SAMPLE_NUMBER)) /
	    AICA_PERIOD_SIZE;
	if (play_period == dreamcastcard->current_period) {
		/* reschedule the timer */
		FUNC2(&(dreamcastcard->timer), jiffies + 1);
		return;
	}
	if (runtime->channels > 1)
		dreamcastcard->current_period = play_period;
	if (FUNC5(dreamcastcard->dma_check == 0))
		dreamcastcard->dma_check = 1;
	FUNC4(&(dreamcastcard->spu_dma_work));
}