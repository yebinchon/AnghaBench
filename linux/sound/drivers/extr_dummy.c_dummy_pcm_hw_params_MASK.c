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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_bytes; } ;

/* Variables and functions */
 scalar_t__ fake_buffer ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *hw_params)
{
	if (fake_buffer) {
		/* runtime->dma_bytes has to be set manually to allow mmap */
		substream->runtime->dma_bytes = FUNC0(hw_params);
		return 0;
	}
	return FUNC1(substream,
					FUNC0(hw_params));
}