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
struct snd_pcm_substream {size_t number; size_t stream; struct loopback* private_data; } ;
struct loopback_cable {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** streams; } ;
struct loopback {struct loopback_cable*** cables; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct loopback_cable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream)
{
	struct loopback *loopback = substream->private_data;
	int dev = FUNC0(substream);
	struct loopback_cable *cable;

	cable = loopback->cables[substream->number][dev];
	if (!cable)
		return;
	if (cable->streams[!substream->stream]) {
		/* other stream is still alive */
		FUNC2(&cable->lock);
		cable->streams[substream->stream] = NULL;
		FUNC3(&cable->lock);
	} else {
		/* free the cable */
		loopback->cables[substream->number][dev] = NULL;
		FUNC1(cable);
	}
}