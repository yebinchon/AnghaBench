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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct es7134_data {struct es7134_chip* chip; } ;
struct es7134_chip {scalar_t__ extra_route_num; int /*<<< orphan*/  extra_routes; scalar_t__ extra_widget_num; int /*<<< orphan*/  extra_widgets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct es7134_data* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *c)
{
	struct snd_soc_dapm_context *dapm = FUNC1(c);
	struct es7134_data *priv = FUNC2(c);
	const struct es7134_chip *chip = priv->chip;
	int ret;

	if (chip->extra_widget_num) {
		ret = FUNC4(dapm, chip->extra_widgets,
						chip->extra_widget_num);
		if (ret) {
			FUNC0(c->dev, "failed to add extra widgets\n");
			return ret;
		}
	}

	if (chip->extra_route_num) {
		ret = FUNC3(dapm, chip->extra_routes,
					      chip->extra_route_num);
		if (ret) {
			FUNC0(c->dev, "failed to add extra routes\n");
			return ret;
		}
	}

	return 0;
}