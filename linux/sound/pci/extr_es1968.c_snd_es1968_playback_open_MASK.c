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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  period_bytes_max; int /*<<< orphan*/  buffer_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; struct esschan* private_data; } ;
struct esschan {int* apu; int /*<<< orphan*/  list; int /*<<< orphan*/  mode; struct snd_pcm_substream* substream; scalar_t__ running; scalar_t__* apu_mode; } ;
struct es1968 {int /*<<< orphan*/  substream_lock; int /*<<< orphan*/  substream_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ESM_APU_PCM_PLAY ; 
 int /*<<< orphan*/  ESM_MODE_PLAY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*) ; 
 struct esschan* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct es1968*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct es1968*,int) ; 
 TYPE_1__ snd_es1968_playback ; 
 struct es1968* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct es1968 *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct esschan *es;
	int apu1;

	/* search 2 APUs */
	apu1 = FUNC3(chip, ESM_APU_PCM_PLAY);
	if (apu1 < 0)
		return apu1;

	es = FUNC1(sizeof(*es), GFP_KERNEL);
	if (!es) {
		FUNC4(chip, apu1);
		return -ENOMEM;
	}

	es->apu[0] = apu1;
	es->apu[1] = apu1 + 1;
	es->apu_mode[0] = 0;
	es->apu_mode[1] = 0;
	es->running = 0;
	es->substream = substream;
	es->mode = ESM_MODE_PLAY;

	runtime->private_data = es;
	runtime->hw = snd_es1968_playback;
	runtime->hw.buffer_bytes_max = runtime->hw.period_bytes_max =
		FUNC0(chip);

	FUNC6(&chip->substream_lock);
	FUNC2(&es->list, &chip->substream_list);
	FUNC7(&chip->substream_lock);

	return 0;
}