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
struct snd_soc_component {int dummy; } ;
struct arizona_priv {unsigned int dvfs_reqs; int /*<<< orphan*/  dvfs_lock; int /*<<< orphan*/  dvfs_cached; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct arizona_priv* FUNC3 (struct snd_soc_component*) ; 

int FUNC4(struct snd_soc_component *component, unsigned int flags)
{
	struct arizona_priv *priv = FUNC3(component);
	int ret = 0;

	FUNC1(&priv->dvfs_lock);

	if (!priv->dvfs_cached && !priv->dvfs_reqs) {
		ret = FUNC0(component);
		if (ret)
			goto err;
	}

	priv->dvfs_reqs |= flags;
err:
	FUNC2(&priv->dvfs_lock);
	return ret;
}