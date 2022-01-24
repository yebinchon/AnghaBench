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
struct TYPE_2__ {int buffer_bytes_max; int period_bytes_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; struct snd_emu8k_pcm* private_data; } ;
struct snd_emu8k_pcm {int /*<<< orphan*/  timer; int /*<<< orphan*/  timer_lock; struct snd_pcm_substream* substream; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int mem_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int LOOP_BLANK_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_TIME ; 
 int /*<<< orphan*/  UINT_MAX ; 
 TYPE_1__ emu8k_pcm_hw ; 
 int /*<<< orphan*/  emu8k_pcm_timer_func ; 
 struct snd_emu8k_pcm* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct snd_emu8000* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *subs)
{
	struct snd_emu8000 *emu = FUNC2(subs);
	struct snd_emu8k_pcm *rec;
	struct snd_pcm_runtime *runtime = subs->runtime;

	rec = FUNC0(sizeof(*rec), GFP_KERNEL);
	if (! rec)
		return -ENOMEM;

	rec->emu = emu;
	rec->substream = subs;
	runtime->private_data = rec;

	FUNC3(&rec->timer_lock);
	FUNC4(&rec->timer, emu8k_pcm_timer_func, 0);

	runtime->hw = emu8k_pcm_hw;
	runtime->hw.buffer_bytes_max = emu->mem_size - LOOP_BLANK_SIZE * 3;
	runtime->hw.period_bytes_max = runtime->hw.buffer_bytes_max / 2;

	/* use timer to update periods.. (specified in msec) */
	FUNC1(runtime, SNDRV_PCM_HW_PARAM_PERIOD_TIME,
				     (1000000 + HZ - 1) / HZ, UINT_MAX);

	return 0;
}