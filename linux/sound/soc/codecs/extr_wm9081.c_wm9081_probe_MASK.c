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
struct TYPE_2__ {int /*<<< orphan*/  num_retune_configs; } ;
struct wm9081_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM9081_ANALOGUE_LINEOUT ; 
 int /*<<< orphan*/  WM9081_ANALOGUE_SPEAKER_PGA ; 
 int /*<<< orphan*/  WM9081_LINEOUTZC ; 
 int /*<<< orphan*/  WM9081_SPKPGAZC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm9081_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm9081_eq_controls ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct wm9081_priv *wm9081 = FUNC3(component);

	/* Enable zero cross by default */
	FUNC4(component, WM9081_ANALOGUE_LINEOUT,
			    WM9081_LINEOUTZC, WM9081_LINEOUTZC);
	FUNC4(component, WM9081_ANALOGUE_SPEAKER_PGA,
			    WM9081_SPKPGAZC, WM9081_SPKPGAZC);

	if (!wm9081->pdata.num_retune_configs) {
		FUNC1(component->dev,
			"No ReTune Mobile data, using normal EQ\n");
		FUNC2(component, wm9081_eq_controls,
				     FUNC0(wm9081_eq_controls));
	}

	return 0;
}