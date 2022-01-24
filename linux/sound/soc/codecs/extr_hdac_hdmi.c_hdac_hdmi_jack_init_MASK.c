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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  card; } ;
struct snd_pcm {int dummy; } ;
struct hdac_hdmi_priv {int /*<<< orphan*/  pcm_list; int /*<<< orphan*/  chmap; TYPE_1__* dai_map; struct hdac_device* hdev; } ;
struct hdac_hdmi_pcm {int pcm_id; int /*<<< orphan*/  head; int /*<<< orphan*/  port_list; int /*<<< orphan*/  lock; struct snd_soc_jack* jack; scalar_t__ jack_event; int /*<<< orphan*/  cvt; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cvt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct hdac_hdmi_pcm* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct snd_pcm* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_pcm*,int,int /*<<< orphan*/ *) ; 
 struct hdac_hdmi_priv* FUNC7 (struct snd_soc_component*) ; 

int FUNC8(struct snd_soc_dai *dai, int device,
				struct snd_soc_jack *jack)
{
	struct snd_soc_component *component = dai->component;
	struct hdac_hdmi_priv *hdmi = FUNC7(component);
	struct hdac_device *hdev = hdmi->hdev;
	struct hdac_hdmi_pcm *pcm;
	struct snd_pcm *snd_pcm;
	int err;

	/*
	 * this is a new PCM device, create new pcm and
	 * add to the pcm list
	 */
	pcm = FUNC2(&hdev->dev, sizeof(*pcm), GFP_KERNEL);
	if (!pcm)
		return -ENOMEM;
	pcm->pcm_id = device;
	pcm->cvt = hdmi->dai_map[dai->id].cvt;
	pcm->jack_event = 0;
	pcm->jack = jack;
	FUNC5(&pcm->lock);
	FUNC0(&pcm->port_list);
	snd_pcm = FUNC3(dai->component->card, device);
	if (snd_pcm) {
		err = FUNC6(snd_pcm, device, &hdmi->chmap);
		if (err < 0) {
			FUNC1(&hdev->dev,
				"chmap control add failed with err: %d for pcm: %d\n",
				err, device);
			return err;
		}
	}

	FUNC4(&pcm->head, &hdmi->pcm_list);

	return 0;
}