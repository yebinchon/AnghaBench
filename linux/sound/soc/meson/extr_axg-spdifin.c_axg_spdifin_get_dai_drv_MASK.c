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
struct TYPE_4__ {char* stream_name; int channels_min; int channels_max; unsigned int rates; int /*<<< orphan*/  formats; } ;
struct snd_soc_dai_driver {char* name; TYPE_2__ capture; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; int /*<<< orphan*/ * ops; } ;
struct device {int dummy; } ;
struct axg_spdifin {TYPE_1__* conf; } ;
struct TYPE_3__ {int /*<<< orphan*/ * mode_rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_soc_dai_driver* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE ; 
 unsigned int SNDRV_PCM_RATE_KNOT ; 
 int SPDIFIN_MODE_NUM ; 
 int /*<<< orphan*/  axg_spdifin_dai_probe ; 
 int /*<<< orphan*/  axg_spdifin_dai_remove ; 
 int /*<<< orphan*/  axg_spdifin_ops ; 
 struct snd_soc_dai_driver* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct snd_soc_dai_driver *
FUNC3(struct device *dev, struct axg_spdifin *priv)
{
	struct snd_soc_dai_driver *drv;
	int i;

	drv = FUNC1(dev, sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return FUNC0(-ENOMEM);

	drv->name = "SPDIF Input";
	drv->ops = &axg_spdifin_ops;
	drv->probe = axg_spdifin_dai_probe;
	drv->remove = axg_spdifin_dai_remove;
	drv->capture.stream_name = "Capture";
	drv->capture.channels_min = 1;
	drv->capture.channels_max = 2;
	drv->capture.formats = SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE;

	for (i = 0; i < SPDIFIN_MODE_NUM; i++) {
		unsigned int rb =
			FUNC2(priv->conf->mode_rates[i]);

		if (rb == SNDRV_PCM_RATE_KNOT)
			return FUNC0(-EINVAL);

		drv->capture.rates |= rb;
	}

	return drv;
}