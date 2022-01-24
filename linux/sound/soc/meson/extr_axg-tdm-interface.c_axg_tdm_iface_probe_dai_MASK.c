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
struct snd_soc_dai {void* playback_dma_data; scalar_t__ playback_widget; void* capture_dma_data; scalar_t__ capture_widget; } ;
struct axg_tdm_iface {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dai*) ; 
 void* FUNC1 (struct axg_tdm_iface*) ; 
 struct axg_tdm_iface* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai)
{
	struct axg_tdm_iface *iface = FUNC2(dai);

	if (dai->capture_widget) {
		dai->capture_dma_data = FUNC1(iface);
		if (!dai->capture_dma_data)
			return -ENOMEM;
	}

	if (dai->playback_widget) {
		dai->playback_dma_data = FUNC1(iface);
		if (!dai->playback_dma_data) {
			FUNC0(dai);
			return -ENOMEM;
		}
	}

	return 0;
}