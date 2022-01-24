#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int channels_min; int channels_max; int /*<<< orphan*/  stream_name; void* formats; void* rates; } ;
struct TYPE_3__ {int channels_min; int channels_max; int /*<<< orphan*/  stream_name; void* formats; void* rates; } ;
struct snd_soc_dai_driver {int symmetric_rates; TYPE_2__ capture; TYPE_1__ playback; int /*<<< orphan*/  pcm_new; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {struct rsnd_dai* rdai; int /*<<< orphan*/  name; } ;
struct rsnd_dai {int /*<<< orphan*/  name; struct rsnd_priv* priv; struct rsnd_dai_stream capture; struct rsnd_dai_stream playback; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSND_DAI_NAME_SIZE ; 
 void* RSND_FMTS ; 
 void* RSND_RATES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int) ; 
 struct snd_soc_dai_driver* FUNC3 (struct rsnd_priv*,int) ; 
 scalar_t__ FUNC4 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct rsnd_dai*,struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  rsnd_pcm_new ; 
 struct device* FUNC11 (struct rsnd_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct rsnd_dai*,int) ; 
 struct rsnd_dai* FUNC13 (struct rsnd_priv*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rsnd_dai*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rsnd_dai*,int) ; 
 int /*<<< orphan*/  rsnd_soc_dai_ops ; 
 scalar_t__ FUNC16 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC18(struct rsnd_priv *priv,
			     struct device_node *dai_np,
			     int dai_i)
{
	struct device_node *playback, *capture;
	struct rsnd_dai_stream *io_playback;
	struct rsnd_dai_stream *io_capture;
	struct snd_soc_dai_driver *drv;
	struct rsnd_dai *rdai;
	struct device *dev = FUNC11(priv);
	int io_i;

	rdai		= FUNC13(priv, dai_i);
	drv		= FUNC3(priv, dai_i);
	io_playback	= &rdai->playback;
	io_capture	= &rdai->capture;

	FUNC17(rdai->name, RSND_DAI_NAME_SIZE, "rsnd-dai.%d", dai_i);

	rdai->priv	= priv;
	drv->name	= rdai->name;
	drv->ops	= &rsnd_soc_dai_ops;
	drv->pcm_new	= rsnd_pcm_new;

	FUNC17(io_playback->name, RSND_DAI_NAME_SIZE,
		 "DAI%d Playback", dai_i);
	drv->playback.rates		= RSND_RATES;
	drv->playback.formats		= RSND_FMTS;
	drv->playback.channels_min	= 2;
	drv->playback.channels_max	= 8;
	drv->playback.stream_name	= io_playback->name;

	FUNC17(io_capture->name, RSND_DAI_NAME_SIZE,
		 "DAI%d Capture", dai_i);
	drv->capture.rates		= RSND_RATES;
	drv->capture.formats		= RSND_FMTS;
	drv->capture.channels_min	= 2;
	drv->capture.channels_max	= 8;
	drv->capture.stream_name	= io_capture->name;

	io_playback->rdai		= rdai;
	io_capture->rdai		= rdai;
	FUNC12(rdai, 2); /* default 2ch */
	FUNC14(rdai, 1); /* default 1lane */
	FUNC15(rdai, 32);   /* default 32bit width */

	for (io_i = 0;; io_i++) {
		playback = FUNC2(dai_np, "playback", io_i);
		capture  = FUNC2(dai_np, "capture", io_i);

		if (!playback && !capture)
			break;

		FUNC9(rdai, playback, capture);
		FUNC10(rdai, playback, capture);
		FUNC8(rdai, playback, capture);
		FUNC5(rdai, playback, capture);
		FUNC7(rdai, playback, capture);
		FUNC6(rdai, playback, capture);

		FUNC1(playback);
		FUNC1(capture);
	}

	if (FUNC16(io_capture) ||
	    FUNC16(io_playback)) {
		/* should have symmetric_rates if pin sharing */
		drv->symmetric_rates = 1;
	}

	FUNC0(dev, "%s (%s/%s)\n", rdai->name,
		FUNC4(io_playback) ? "play"    : " -- ",
		FUNC4(io_capture) ? "capture" : "  --   ");
}