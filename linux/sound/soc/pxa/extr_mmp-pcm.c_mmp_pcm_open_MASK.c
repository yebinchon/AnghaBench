#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int /*<<< orphan*/  id; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct mmp_dma_data {int /*<<< orphan*/  ssp_id; struct resource* dma_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/ * mmp_pcm_hardware ; 
 struct resource* FUNC0 (struct platform_device*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ,struct mmp_dma_data*) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC2(rtd, DRV_NAME);
	struct platform_device *pdev = FUNC4(component->dev);
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct mmp_dma_data dma_data;
	struct resource *r;

	r = FUNC0(pdev, IORESOURCE_DMA, substream->stream);
	if (!r)
		return -EBUSY;

	FUNC3(substream,
				&mmp_pcm_hardware[substream->stream]);

	dma_data.dma_res = r;
	dma_data.ssp_id = cpu_dai->id;

	return FUNC1(substream, filter,
		    &dma_data);
}