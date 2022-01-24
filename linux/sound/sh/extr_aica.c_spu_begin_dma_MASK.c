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
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_card_aica {int /*<<< orphan*/  timer; int /*<<< orphan*/  spu_dma_work; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_card_aica *dreamcastcard;
	struct snd_pcm_runtime *runtime;
	runtime = substream->runtime;
	dreamcastcard = substream->pcm->private_data;
	/*get the queue to do the work */
	FUNC1(&(dreamcastcard->spu_dma_work));
	FUNC0(&dreamcastcard->timer, jiffies + 4);
}