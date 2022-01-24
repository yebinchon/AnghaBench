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
struct voice {TYPE_1__* timing; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct voice* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct sis7019 {int /*<<< orphan*/  voice_lock; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct sis7019*) ; 
 int /*<<< orphan*/  FUNC1 (struct sis7019*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct sis7019*,struct voice*) ; 
 struct sis7019* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *hw_params)
{
	struct sis7019 *sis = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct voice *voice = runtime->private_data;
	unsigned int period_size, buffer_size;
	unsigned long flags;
	int needed;

	/* If there are one or two periods per buffer, we don't need a
	 * timing voice, as we can use the capture channel's interrupts
	 * to clock out the periods.
	 */
	period_size = FUNC3(hw_params);
	buffer_size = FUNC2(hw_params);
	needed = (period_size != buffer_size &&
			period_size != (buffer_size / 2));

	if (needed && !voice->timing) {
		FUNC6(&sis->voice_lock, flags);
		voice->timing = FUNC0(sis);
		if (voice->timing)
			FUNC1(sis);
		FUNC7(&sis->voice_lock, flags);
		if (!voice->timing)
			return -ENOMEM;
		voice->timing->substream = substream;
	} else if (!needed && voice->timing) {
		FUNC4(sis, voice);
		voice->timing = NULL;
	}

	return 0;
}