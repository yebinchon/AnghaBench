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
struct snd_pcm_substream {int /*<<< orphan*/  mmap_count; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {scalar_t__ prev_hw_ptr_period; scalar_t__ period_frames; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct snd_pcm_runtime*) ; 
 scalar_t__ FUNC2 (struct snd_pcm_runtime*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	if (FUNC0(&substream->mmap_count))
		return runtime->oss.prev_hw_ptr_period !=
						FUNC1(runtime);
	else
		return FUNC2(runtime) >=
						runtime->oss.period_frames;
}