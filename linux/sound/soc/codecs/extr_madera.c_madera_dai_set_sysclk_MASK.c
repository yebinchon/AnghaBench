#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_route {char* source; int /*<<< orphan*/  sink; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {int id; TYPE_3__* driver; scalar_t__ active; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct madera_priv {struct madera_dai_priv* dai; } ;
struct madera_dai_priv {int clk; } ;
typedef  int /*<<< orphan*/  routes ;
struct TYPE_5__ {int /*<<< orphan*/  stream_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  stream_name; } ;
struct TYPE_6__ {TYPE_2__ playback; TYPE_1__ capture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_route*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_route**,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct madera_priv* FUNC6 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,struct snd_soc_dapm_route*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*,struct snd_soc_dapm_route*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *dai,
				 int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct snd_soc_dapm_context *dapm =
		FUNC5(component);
	struct madera_priv *priv = FUNC6(component);
	struct madera_dai_priv *dai_priv = &priv->dai[dai->id - 1];
	struct snd_soc_dapm_route routes[2];
	int is_sync;

	is_sync = FUNC3(clk_id);
	if (is_sync < 0) {
		FUNC2(component->dev, "Illegal DAI clock id %d\n", clk_id);
		return is_sync;
	}

	if (is_sync == FUNC3(dai_priv->clk))
		return 0;

	if (dai->active) {
		FUNC2(component->dev, "Can't change clock on active DAI %d\n",
			dai->id);
		return -EBUSY;
	}

	FUNC1(component->dev, "Setting AIF%d to %s\n", dai->id,
		is_sync ? "SYSCLK" : "ASYNCCLK");

	/*
	 * A connection to SYSCLK is always required, we only add and remove
	 * a connection to ASYNCCLK
	 */
	FUNC4(&routes, 0, sizeof(routes));
	routes[0].sink = dai->driver->capture.stream_name;
	routes[1].sink = dai->driver->playback.stream_name;
	routes[0].source = "ASYNCCLK";
	routes[1].source = "ASYNCCLK";

	if (is_sync)
		FUNC8(dapm, routes, FUNC0(routes));
	else
		FUNC7(dapm, routes, FUNC0(routes));

	dai_priv->clk = clk_id;

	return FUNC9(dapm);
}