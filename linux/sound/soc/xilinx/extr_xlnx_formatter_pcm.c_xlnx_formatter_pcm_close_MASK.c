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
struct xlnx_pcm_stream_param {int /*<<< orphan*/  mmio; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; struct snd_soc_pcm_runtime* private_data; TYPE_1__* runtime; } ;
struct TYPE_2__ {struct xlnx_pcm_stream_param* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xlnx_pcm_stream_param*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	int ret;
	struct xlnx_pcm_stream_param *stream_data =
			substream->runtime->private_data;
	struct snd_soc_pcm_runtime *prtd = substream->private_data;
	struct snd_soc_component *component = FUNC2(prtd,
								    DRV_NAME);

	ret = FUNC4(stream_data->mmio);
	if (ret) {
		FUNC0(component->dev, "audio formatter reset failed\n");
		goto err_reset;
	}
	FUNC3(stream_data->mmio, substream->stream);

err_reset:
	FUNC1(stream_data);
	return 0;
}