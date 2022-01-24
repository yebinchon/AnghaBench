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
struct fsi_stream {int dummy; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 struct fsi_priv* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct fsi_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsi_priv*,struct fsi_stream*,int /*<<< orphan*/ ) ; 
 struct fsi_stream* FUNC3 (struct fsi_priv*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_priv*,struct fsi_stream*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_priv*,struct fsi_stream*) ; 
 int FUNC6 (struct fsi_priv*,struct fsi_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsi_priv*,struct fsi_stream*) ; 
 int FUNC8 (struct fsi_stream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream, int cmd,
			   struct snd_soc_dai *dai)
{
	struct fsi_priv *fsi = FUNC0(substream);
	struct fsi_stream *io = FUNC3(fsi, substream);
	int ret = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC4(fsi, io, substream);
		if (!ret)
			ret = FUNC2(fsi, io, dai->dev);
		if (!ret)
			ret = FUNC6(fsi, io);
		if (!ret)
			ret = FUNC8(io);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		if (!ret)
			ret = FUNC1(fsi, dai->dev);
		FUNC7(fsi, io);
		FUNC5(fsi, io);
		break;
	}

	return ret;
}