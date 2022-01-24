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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  cpu_dai; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct samsung_i2s_priv {int /*<<< orphan*/  lock; } ;
struct i2s_dai {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FIC_RXFLUSH ; 
 int /*<<< orphan*/  FIC_TXFLUSH ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct i2s_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2s_dai*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2s_dai*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2s_dai*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct samsung_i2s_priv* FUNC6 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct i2s_dai* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
	int cmd, struct snd_soc_dai *dai)
{
	struct samsung_i2s_priv *priv = FUNC6(dai);
	int capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct i2s_dai *i2s = FUNC9(rtd->cpu_dai);
	unsigned long flags;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC4(dai->dev);
		FUNC7(&priv->lock, flags);

		if (FUNC0(i2s)) {
			FUNC8(&priv->lock, flags);
			return -EINVAL;
		}

		if (capture)
			FUNC2(i2s, 1);
		else
			FUNC3(i2s, 1);

		FUNC8(&priv->lock, flags);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC7(&priv->lock, flags);

		if (capture) {
			FUNC2(i2s, 0);
			FUNC1(i2s, FIC_RXFLUSH);
		} else {
			FUNC3(i2s, 0);
			FUNC1(i2s, FIC_TXFLUSH);
		}

		FUNC8(&priv->lock, flags);
		FUNC5(dai->dev);
		break;
	}

	return 0;
}