#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_mixart {TYPE_3__* mgr; TYPE_2__* card; } ;
struct mixart_stream {TYPE_5__* pipe; } ;
struct TYPE_9__ {int references; } ;
struct TYPE_8__ {int ref_count_rate; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  rate; struct mixart_stream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct snd_mixart* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *subs)
{
	struct snd_mixart *chip = FUNC3(subs);
	struct mixart_stream *stream = subs->runtime->private_data;

	/* TODO de façon non bloquante, réappliquer les hw_params (rate, bits, codec) */

	FUNC0(chip->card->dev, "snd_mixart_prepare\n");

	FUNC2(chip->mgr);

	/* only the first stream can choose the sample rate */
	/* the further opened streams will be limited to its frequency (see open) */
	if(chip->mgr->ref_count_rate == 1)
		chip->mgr->sample_rate = subs->runtime->rate;

	/* set the clock only once (first stream) on the same pipe */
	if(stream->pipe->references == 1) {
		if( FUNC1(chip->mgr, stream->pipe, subs->runtime->rate) )
			return -EINVAL;
	}

	return 0;
}