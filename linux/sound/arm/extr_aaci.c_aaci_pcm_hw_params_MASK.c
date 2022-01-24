#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct aaci* private_data; TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci_runtime {int pcm_open; int cr; int fifo_bytes; TYPE_3__* pcm; } ;
struct aaci {int fifo_depth; } ;
struct TYPE_7__ {TYPE_2__* r; } ;
struct TYPE_6__ {int /*<<< orphan*/  slots; } ;
struct TYPE_5__ {struct aaci_runtime* private_data; } ;

/* Variables and functions */
 int CR_COMPACT ; 
 int CR_FEN ; 
 int CR_SZ16 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int* channels_to_slotmask ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			      struct snd_pcm_hw_params *params)
{
	struct aaci_runtime *aacirun = substream->runtime->private_data;
	unsigned int channels = FUNC2(params);
	unsigned int rate = FUNC3(params);
	int dbl = rate > 48000;
	int err;

	FUNC0(substream);
	if (aacirun->pcm_open) {
		FUNC4(aacirun->pcm);
		aacirun->pcm_open = 0;
	}

	/* channels is already limited to 2, 4, or 6 by aaci_rule_channels */
	if (dbl && channels != 2)
		return -EINVAL;

	err = FUNC6(substream,
				       FUNC1(params));
	if (err >= 0) {
		struct aaci *aaci = substream->private_data;

		err = FUNC5(aacirun->pcm, rate, channels,
					aacirun->pcm->r[dbl].slots);

		aacirun->pcm_open = err == 0;
		aacirun->cr = CR_FEN | CR_COMPACT | CR_SZ16;
		aacirun->cr |= channels_to_slotmask[channels + dbl * 2];

		/*
		 * fifo_bytes is the number of bytes we transfer to/from
		 * the FIFO, including padding.  So that's x4.  As we're
		 * in compact mode, the FIFO is half the size.
		 */
		aacirun->fifo_bytes = aaci->fifo_depth * 4 / 2;
	}

	return err;
}