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
struct snd_pcm_runtime {scalar_t__ hw_ptr_wrap; TYPE_1__* status; int /*<<< orphan*/  buffer_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,unsigned long) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				   void *arg)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long flags;
	FUNC1(substream, flags);
	if (FUNC0(substream) &&
	    FUNC3(substream) >= 0)
		runtime->status->hw_ptr %= runtime->buffer_size;
	else {
		runtime->status->hw_ptr = 0;
		runtime->hw_ptr_wrap = 0;
	}
	FUNC2(substream, flags);
	return 0;
}