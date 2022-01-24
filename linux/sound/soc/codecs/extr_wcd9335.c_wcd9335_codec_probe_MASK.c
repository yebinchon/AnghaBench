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
struct wcd9335_codec {TYPE_1__* dai; struct snd_soc_component* component; int /*<<< orphan*/  hph_mode; int /*<<< orphan*/  clsh_ctrl; int /*<<< orphan*/  version; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  slim_ch_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLS_H_HIFI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NUM_CODEC_DAIS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct wcd9335_codec* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct wcd9335_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct wcd9335_codec *wcd = FUNC3(component->dev);
	int i;

	FUNC4(component, wcd->regmap);
	/* Class-H Init*/
	wcd->clsh_ctrl = FUNC7(component, wcd->version);
	if (FUNC1(wcd->clsh_ctrl))
		return FUNC2(wcd->clsh_ctrl);

	/* Default HPH Mode to Class-H HiFi */
	wcd->hph_mode = CLS_H_HIFI;
	wcd->component = component;

	FUNC5(component);

	for (i = 0; i < NUM_CODEC_DAIS; i++)
		FUNC0(&wcd->dai[i].slim_ch_list);

	return FUNC6(wcd);
}