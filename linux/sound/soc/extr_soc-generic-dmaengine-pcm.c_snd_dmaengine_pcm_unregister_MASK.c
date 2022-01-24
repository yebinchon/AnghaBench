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
struct snd_soc_component {int dummy; } ;
struct dmaengine_pcm {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_DMAENGINE_PCM_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct dmaengine_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmaengine_pcm*) ; 
 struct snd_soc_component* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct dmaengine_pcm* FUNC4 (struct snd_soc_component*) ; 

void FUNC5(struct device *dev)
{
	struct snd_soc_component *component;
	struct dmaengine_pcm *pcm;

	component = FUNC2(dev, SND_DMAENGINE_PCM_DRV_NAME);
	if (!component)
		return;

	pcm = FUNC4(component);

	FUNC3(dev);
	FUNC0(pcm);
	FUNC1(pcm);
}