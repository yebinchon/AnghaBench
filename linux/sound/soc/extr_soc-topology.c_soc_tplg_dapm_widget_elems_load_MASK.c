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
struct soc_tplg {scalar_t__ pass; int /*<<< orphan*/  dev; scalar_t__ pos; } ;
struct snd_soc_tplg_hdr {int /*<<< orphan*/  count; } ;
struct snd_soc_tplg_dapm_widget {int /*<<< orphan*/  name; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SOC_TPLG_PASS_WIDGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct soc_tplg*,struct snd_soc_tplg_dapm_widget*) ; 

__attribute__((used)) static int FUNC4(struct soc_tplg *tplg,
	struct snd_soc_tplg_hdr *hdr)
{
	struct snd_soc_tplg_dapm_widget *widget;
	int ret, count, i;

	count = FUNC2(hdr->count);

	if (tplg->pass != SOC_TPLG_PASS_WIDGET)
		return 0;

	FUNC0(tplg->dev, "ASoC: adding %d DAPM widgets\n", count);

	for (i = 0; i < count; i++) {
		widget = (struct snd_soc_tplg_dapm_widget *) tplg->pos;
		if (FUNC2(widget->size) != sizeof(*widget)) {
			FUNC1(tplg->dev, "ASoC: invalid widget size\n");
			return -EINVAL;
		}

		ret = FUNC3(tplg, widget);
		if (ret < 0) {
			FUNC1(tplg->dev, "ASoC: failed to load widget %s\n",
				widget->name);
			return ret;
		}
	}

	return 0;
}