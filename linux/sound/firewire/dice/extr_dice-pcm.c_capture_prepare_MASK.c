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
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_dice* private_data; } ;
struct snd_dice {int /*<<< orphan*/  mutex; struct amdtp_stream* tx_stream; } ;
struct amdtp_stream {int dummy; } ;
struct TYPE_2__ {size_t device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_dice*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_dice *dice = substream->private_data;
	struct amdtp_stream *stream = &dice->tx_stream[substream->pcm->device];
	int err;

	FUNC1(&dice->mutex);
	err = FUNC3(dice);
	FUNC2(&dice->mutex);
	if (err >= 0)
		FUNC0(stream);

	return 0;
}