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
struct snd_dmaengine_pcm_config {char** chan_names; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_dmaengine_pcm_config* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,struct snd_dmaengine_pcm_config*,int /*<<< orphan*/ ) ; 
 struct snd_dmaengine_pcm_config edma_dmaengine_pcm_config ; 

int FUNC2(struct device *dev)
{
	struct snd_dmaengine_pcm_config *config;

	if (dev->of_node)
		return FUNC1(dev,
						&edma_dmaengine_pcm_config, 0);

	config = FUNC0(dev, sizeof(*config), GFP_KERNEL);
	if (!config)
		return -ENOMEM;

	*config = edma_dmaengine_pcm_config;

	config->chan_names[0] = "tx";
	config->chan_names[1] = "rx";

	return FUNC1(dev, config, 0);
}