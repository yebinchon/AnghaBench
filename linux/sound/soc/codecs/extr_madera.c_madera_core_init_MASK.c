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
struct madera_priv {TYPE_1__* madera; int /*<<< orphan*/  rate_lock; } ;
struct TYPE_2__ {int* out_clamp; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MADERA_MAX_HP_OUTPUT ; 
 int MADERA_NUM_MIXER_INPUTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * madera_mixer_texts ; 
 int /*<<< orphan*/ * madera_mixer_values ; 
 int /*<<< orphan*/  FUNC2 (struct madera_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct madera_priv *priv)
{
	int i;

	/* trap undersized array initializers */
	FUNC0(!madera_mixer_texts[MADERA_NUM_MIXER_INPUTS - 1]);
	FUNC0(!madera_mixer_values[MADERA_NUM_MIXER_INPUTS - 1]);

	if (!FUNC1(priv->madera->dev))
		FUNC2(priv);

	FUNC3(&priv->rate_lock);

	for (i = 0; i < MADERA_MAX_HP_OUTPUT; i++)
		priv->madera->out_clamp[i] = true;

	return 0;
}