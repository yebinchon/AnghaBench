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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; scalar_t__ src_addr; } ;
struct atmel_pdmic {scalar_t__ phy_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PDMIC_CDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ; 
 struct atmel_pdmic* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct dma_slave_config *slave_config)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct atmel_pdmic *dd = FUNC2(rtd->card);
	int ret;

	ret = FUNC1(substream, params,
					       slave_config);
	if (ret) {
		FUNC0(dd->dev,
			"hw params to dma slave configure failed\n");
		return ret;
	}

	slave_config->src_addr		= dd->phy_base + PDMIC_CDR;
	slave_config->src_maxburst	= 1;
	slave_config->dst_maxburst	= 1;

	return 0;
}