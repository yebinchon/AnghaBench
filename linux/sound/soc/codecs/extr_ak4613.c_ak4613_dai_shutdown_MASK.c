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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct device {int dummy; } ;
struct ak4613_priv {scalar_t__ cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ak4613_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ak4613_priv *priv = FUNC3(component);
	struct device *dev = component->dev;

	FUNC1(&priv->lock);
	priv->cnt--;
	if (priv->cnt < 0) {
		FUNC0(dev, "unexpected counter error\n");
		priv->cnt = 0;
	}
	if (!priv->cnt)
		priv->iface = NULL;
	FUNC2(&priv->lock);
}