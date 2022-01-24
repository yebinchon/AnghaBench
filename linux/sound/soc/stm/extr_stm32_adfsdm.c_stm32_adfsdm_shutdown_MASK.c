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
struct stm32_adfsdm_priv {int iio_active; int /*<<< orphan*/  lock; int /*<<< orphan*/  iio_cb; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stm32_adfsdm_priv* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct stm32_adfsdm_priv *priv = FUNC3(dai);

	FUNC1(&priv->lock);
	if (priv->iio_active) {
		FUNC0(priv->iio_cb);
		priv->iio_active = false;
	}
	FUNC2(&priv->lock);
}