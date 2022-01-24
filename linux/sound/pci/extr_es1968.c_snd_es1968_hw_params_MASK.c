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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; struct esschan* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct esschan {TYPE_3__* memory; } ;
struct es1968 {TYPE_1__* card; } ;
struct TYPE_6__ {int bytes; } ;
struct TYPE_7__ {TYPE_2__ buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct es1968*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (struct es1968*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,TYPE_2__*) ; 
 struct es1968* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *hw_params)
{
	struct es1968 *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct esschan *chan = runtime->private_data;
	int size = FUNC1(hw_params);

	if (chan->memory) {
		if (chan->memory->buf.bytes >= size) {
			runtime->dma_bytes = size;
			return 0;
		}
		FUNC2(chip, chan->memory);
	}
	chan->memory = FUNC3(chip, size);
	if (chan->memory == NULL) {
		FUNC0(chip->card->dev,
			"cannot allocate dma buffer: size = %d\n", size);
		return -ENOMEM;
	}
	FUNC4(substream, &chan->memory->buf);
	return 1; /* area was changed */
}