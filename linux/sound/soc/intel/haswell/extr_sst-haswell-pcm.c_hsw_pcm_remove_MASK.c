#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct hsw_priv_data {int /*<<< orphan*/ ** dmab; } ;
struct TYPE_5__ {scalar_t__ channels_min; } ;
struct TYPE_6__ {scalar_t__ channels_min; } ;
struct TYPE_7__ {TYPE_1__ capture; TYPE_2__ playback; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 TYPE_3__* hsw_dais ; 
 int /*<<< orphan*/  FUNC1 (struct hsw_priv_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hsw_priv_data* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct hsw_priv_data *priv_data =
		FUNC4(component);
	int i;

	FUNC2(component->dev);
	FUNC1(priv_data);

	for (i = 0; i < FUNC0(hsw_dais); i++) {
		if (hsw_dais[i].playback.channels_min)
			FUNC3(&priv_data->dmab[i][0]);
		if (hsw_dais[i].capture.channels_min)
			FUNC3(&priv_data->dmab[i][1]);
	}
}