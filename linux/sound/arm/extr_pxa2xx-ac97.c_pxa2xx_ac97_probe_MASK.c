#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_card {char* mixername; int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct snd_ac97_template {int dummy; } ;
struct snd_ac97_bus {int /*<<< orphan*/ * codec; } ;
struct TYPE_7__ {TYPE_1__* driver; TYPE_2__* platform_data; } ;
struct platform_device {scalar_t__ id; TYPE_3__ dev; } ;
struct TYPE_6__ {scalar_t__* codec_pdata; } ;
typedef  TYPE_2__ pxa2xx_audio_ops_t ;
typedef  int /*<<< orphan*/  ac97_template ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97_template*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct snd_card*) ; 
 int /*<<< orphan*/  pxa2xx_ac97_ac97 ; 
 int FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  pxa2xx_ac97_ops ; 
 int FUNC5 (struct snd_card*) ; 
 int FUNC6 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct snd_ac97_bus**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct snd_ac97_bus*,struct snd_ac97_template*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_card*) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int FUNC12 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *dev)
{
	struct snd_card *card;
	struct snd_ac97_bus *ac97_bus;
	struct snd_ac97_template ac97_template;
	int ret;
	pxa2xx_audio_ops_t *pdata = dev->dev.platform_data;

	if (dev->id >= 0) {
		FUNC0(&dev->dev, "PXA2xx has only one AC97 port.\n");
		ret = -ENXIO;
		goto err_dev;
	}

	ret = FUNC11(&dev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
			   THIS_MODULE, 0, &card);
	if (ret < 0)
		goto err;

	FUNC14(card->driver, dev->dev.driver->name, sizeof(card->driver));

	ret = FUNC5(card);
	if (ret)
		goto err;

	ret = FUNC3(dev);
	if (ret)
		goto err;

	ret = FUNC6(card, 0, &pxa2xx_ac97_ops, NULL, &ac97_bus);
	if (ret)
		goto err_remove;
	FUNC1(&ac97_template, 0, sizeof(ac97_template));
	ret = FUNC9(ac97_bus, &ac97_template, &pxa2xx_ac97_ac97);
	if (ret)
		goto err_remove;

	FUNC13(card->shortname, sizeof(card->shortname),
		 "%s", FUNC8(pxa2xx_ac97_ac97));
	FUNC13(card->longname, sizeof(card->longname),
		 "%s (%s)", dev->dev.driver->name, card->mixername);

	if (pdata && pdata->codec_pdata[0])
		FUNC7(ac97_bus->codec[0], pdata->codec_pdata[0]);
	ret = FUNC12(card);
	if (ret == 0) {
		FUNC2(dev, card);
		return 0;
	}

err_remove:
	FUNC4(dev);
err:
	if (card)
		FUNC10(card);
err_dev:
	return ret;
}