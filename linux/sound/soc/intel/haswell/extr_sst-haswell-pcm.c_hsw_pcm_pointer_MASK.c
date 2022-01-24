#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct hsw_priv_data {struct hsw_pcm_data** pcm; struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_4__ {int dai_id; } ;
struct TYPE_3__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* mod_map ; 
 struct hsw_priv_data* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_hsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_hsw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_component *component = FUNC3(rtd, DRV_NAME);
	struct hsw_priv_data *pdata = FUNC2(component);
	struct hsw_pcm_data *pcm_data;
	struct sst_hsw *hsw = pdata->hsw;
	snd_pcm_uframes_t offset;
	uint64_t ppos;
	u32 position;
	int dai;

	dai = mod_map[rtd->cpu_dai->id].dai_id;
	pcm_data = &pdata->pcm[dai][substream->stream];
	position = FUNC4(hsw, pcm_data->stream);

	offset = FUNC0(runtime, position);
	ppos = FUNC5(hsw, pcm_data->stream);

	FUNC1(rtd->dev, "PCM: DMA pointer %du bytes, pos %llu\n",
		position, ppos);
	return offset;
}