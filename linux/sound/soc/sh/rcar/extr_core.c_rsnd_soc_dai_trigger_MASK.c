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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct rsnd_priv {int /*<<< orphan*/  lock; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  irq ; 
 int /*<<< orphan*/  quit ; 
 int FUNC0 (int /*<<< orphan*/ ,struct rsnd_dai_stream*,struct rsnd_priv*,...) ; 
 struct rsnd_priv* FUNC1 (struct snd_soc_dai*) ; 
 struct rsnd_dai* FUNC2 (struct snd_soc_dai*) ; 
 struct rsnd_dai_stream* FUNC3 (struct rsnd_dai*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  start ; 
 int /*<<< orphan*/  stop ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd,
			    struct snd_soc_dai *dai)
{
	struct rsnd_priv *priv = FUNC1(dai);
	struct rsnd_dai *rdai = FUNC2(dai);
	struct rsnd_dai_stream *io = FUNC3(rdai, substream);
	int ret;
	unsigned long flags;

	FUNC4(&priv->lock, flags);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		ret = FUNC0(init, io, priv);
		if (ret < 0)
			goto dai_trigger_end;

		ret = FUNC0(start, io, priv);
		if (ret < 0)
			goto dai_trigger_end;

		ret = FUNC0(irq, io, priv, 1);
		if (ret < 0)
			goto dai_trigger_end;

		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		ret = FUNC0(irq, io, priv, 0);

		ret |= FUNC0(stop, io, priv);

		ret |= FUNC0(quit, io, priv);

		break;
	default:
		ret = -EINVAL;
	}

dai_trigger_end:
	FUNC5(&priv->lock, flags);

	return ret;
}