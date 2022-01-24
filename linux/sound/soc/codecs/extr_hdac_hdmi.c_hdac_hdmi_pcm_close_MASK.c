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
struct snd_soc_dai {size_t id; } ;
struct snd_pcm_substream {int dummy; } ;
struct hdac_hdmi_priv {struct hdac_hdmi_dai_port_map* dai_map; } ;
struct hdac_hdmi_pcm {int chmap_set; int /*<<< orphan*/  lock; scalar_t__ channels; int /*<<< orphan*/  chmap; } ;
struct hdac_hdmi_dai_port_map {int /*<<< orphan*/ * port; int /*<<< orphan*/  cvt; } ;

/* Variables and functions */
 struct hdac_hdmi_pcm* FUNC0 (struct hdac_hdmi_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hdac_hdmi_priv* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC5(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct hdac_hdmi_priv *hdmi = FUNC4(dai);
	struct hdac_hdmi_dai_port_map *dai_map;
	struct hdac_hdmi_pcm *pcm;

	dai_map = &hdmi->dai_map[dai->id];

	pcm = FUNC0(hdmi, dai_map->cvt);

	if (pcm) {
		FUNC2(&pcm->lock);
		pcm->chmap_set = false;
		FUNC1(pcm->chmap, 0, sizeof(pcm->chmap));
		pcm->channels = 0;
		FUNC3(&pcm->lock);
	}

	if (dai_map->port)
		dai_map->port = NULL;
}