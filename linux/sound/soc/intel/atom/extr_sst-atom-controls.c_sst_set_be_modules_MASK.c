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
struct sst_data {int dummy; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sst_data* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dapm_widget*,struct snd_kcontrol*) ; 
 int FUNC5 (struct sst_data*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *k, int event)
{
	int ret = 0;
	struct snd_soc_component *c = FUNC3(w->dapm);
	struct sst_data *drv = FUNC2(c);

	FUNC1(c->dev, "Enter: widget=%s\n", w->name);

	if (FUNC0(event)) {
		ret = FUNC5(drv);
		if (ret)
			return ret;
		ret = FUNC4(w, k);
	}
	return ret;
}