#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_rme9652 {TYPE_1__* pcm; scalar_t__ playback_substream; scalar_t__ capture_substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  substream; } ;
struct TYPE_3__ {TYPE_2__* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RME9652_IRQ ; 
 int /*<<< orphan*/  RME9652_irq_clear ; 
 int /*<<< orphan*/  RME9652_status_register ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct snd_rme9652*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_rme9652*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct snd_rme9652 *rme9652 = (struct snd_rme9652 *) dev_id;

	if (!(FUNC0(rme9652, RME9652_status_register) & RME9652_IRQ)) {
		return IRQ_NONE;
	}

	FUNC1(rme9652, RME9652_irq_clear, 0);

	if (rme9652->capture_substream) {
		FUNC2(rme9652->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
	}

	if (rme9652->playback_substream) {
		FUNC2(rme9652->pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream);
	}
	return IRQ_HANDLED;
}