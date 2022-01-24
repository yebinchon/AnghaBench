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
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct ak4613_priv {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ak4613_priv*,int /*<<< orphan*/ ) ; 
 struct ak4613_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			      struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ak4613_priv *priv = FUNC1(component);

	priv->cnt++;

	FUNC0(priv, substream->runtime);

	return 0;
}