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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct samsung_i2s_priv {int /*<<< orphan*/  pcm_lock; } ;
struct i2s_dai {scalar_t__ bfs; scalar_t__ rfs; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAI_MANAGER ; 
 int /*<<< orphan*/  DAI_OPENED ; 
 struct i2s_dai* FUNC0 (struct i2s_dai*) ; 
 scalar_t__ FUNC1 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC7(struct snd_pcm_substream *substream,
	struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC3(dai);
	struct i2s_dai *i2s = FUNC6(dai);
	struct i2s_dai *other = FUNC0(i2s);
	unsigned long flags;

	FUNC4(&priv->pcm_lock, flags);

	i2s->mode &= ~DAI_OPENED;
	i2s->mode &= ~DAI_MANAGER;

	if (FUNC1(other))
		other->mode |= DAI_MANAGER;

	/* Reset any constraint on RFS and BFS */
	i2s->rfs = 0;
	i2s->bfs = 0;

	FUNC5(&priv->pcm_lock, flags);

	FUNC2(dai->dev);
}