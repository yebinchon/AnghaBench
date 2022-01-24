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
struct sprd_compr_stream {int num_channels; TYPE_1__* compr_ops; int /*<<< orphan*/  iram_buffer; int /*<<< orphan*/  compr_buffer; struct sprd_compr_dma* dma; } ;
struct sprd_compr_dma {int /*<<< orphan*/ * chan; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct sprd_compr_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct snd_compr_stream *cstream)
{
	struct snd_compr_runtime *runtime = cstream->runtime;
	struct sprd_compr_stream *stream = runtime->private_data;
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_soc_component *component =
		FUNC3(rtd, DRV_NAME);
	struct device *dev = component->dev;
	int stream_id = cstream->direction, i;

	for (i = 0; i < stream->num_channels; i++) {
		struct sprd_compr_dma *dma = &stream->dma[i];

		if (dma->chan) {
			FUNC1(dma->chan);
			dma->chan = NULL;
		}
	}

	FUNC2(&stream->compr_buffer);
	FUNC2(&stream->iram_buffer);

	stream->compr_ops->close(stream_id);

	FUNC0(dev, stream);
	return 0;
}