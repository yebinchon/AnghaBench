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
typedef  int /*<<< orphan*/  u32 ;
struct sst_byt_stream {int dummy; } ;
struct sst_byt_priv_data {struct sst_byt* byt; } ;
struct sst_byt_pcm_data {int /*<<< orphan*/  hw_ptr; int /*<<< orphan*/  stream; struct snd_pcm_substream* substream; } ;
struct sst_byt {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; TYPE_1__* control; } ;
struct TYPE_2__ {int appl_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct sst_byt_priv_data* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_byt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct sst_byt_stream *stream, void *data)
{
	struct sst_byt_pcm_data *pcm_data = data;
	struct snd_pcm_substream *substream = pcm_data->substream;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC5(rtd, DRV_NAME);
	struct sst_byt_priv_data *pdata = FUNC4(component);
	struct sst_byt *byt = pdata->byt;
	u32 pos, hw_pos;

	hw_pos = FUNC6(byt, pcm_data->stream,
					  FUNC2(substream));
	pcm_data->hw_ptr = hw_pos;
	pos = FUNC1(runtime,
			      (runtime->control->appl_ptr %
			       runtime->buffer_size));

	FUNC0(rtd->dev, "PCM: App/DMA pointer %u/%u bytes\n", pos, hw_pos);

	FUNC3(substream);
	return pos;
}