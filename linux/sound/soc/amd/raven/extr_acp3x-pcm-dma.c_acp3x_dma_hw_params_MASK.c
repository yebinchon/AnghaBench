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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; scalar_t__ area; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; TYPE_1__ dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_area; struct i2s_stream_instance* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct i2s_stream_instance {int num_pages; int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_stream_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			       struct snd_pcm_hw_params *params)
{
	int status;
	u64 size;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct i2s_stream_instance *rtd = runtime->private_data;

	if (!rtd)
		return -EINVAL;

	size = FUNC3(params);
	status = FUNC4(substream, size);
	if (status < 0)
		return status;

	FUNC2(substream->runtime->dma_area, 0, FUNC3(params));
	if (substream->dma_buffer.area) {
		rtd->dma_addr = substream->dma_buffer.addr;
		rtd->num_pages = (FUNC0(size) >> PAGE_SHIFT);
		FUNC1(rtd, substream->stream);
		status = 0;
	} else {
		status = -ENOMEM;
	}
	return status;
}