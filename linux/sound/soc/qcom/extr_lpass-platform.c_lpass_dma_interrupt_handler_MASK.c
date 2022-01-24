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
typedef  int u32 ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct lpass_variant {int dummy; } ;
struct lpass_data {int /*<<< orphan*/  lpaif_map; struct lpass_variant* variant; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct lpass_variant*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  LPAIF_IRQ_PORT_HOST ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static irqreturn_t FUNC10(
			struct snd_pcm_substream *substream,
			struct lpass_data *drvdata,
			int chan, u32 interrupts)
{
	struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
	struct lpass_variant *v = drvdata->variant;
	irqreturn_t ret = IRQ_NONE;
	int rv;

	if (interrupts & FUNC2(chan)) {
		rv = FUNC6(drvdata->lpaif_map,
				FUNC0(v, LPAIF_IRQ_PORT_HOST),
				FUNC2(chan));
		if (rv) {
			FUNC4(soc_runtime->dev,
				"error writing to irqclear reg: %d\n", rv);
			return IRQ_NONE;
		}
		FUNC7(substream);
		ret = IRQ_HANDLED;
	}

	if (interrupts & FUNC3(chan)) {
		rv = FUNC6(drvdata->lpaif_map,
				FUNC0(v, LPAIF_IRQ_PORT_HOST),
				FUNC3(chan));
		if (rv) {
			FUNC4(soc_runtime->dev,
				"error writing to irqclear reg: %d\n", rv);
			return IRQ_NONE;
		}
		FUNC5(soc_runtime->dev, "xrun warning\n");
		FUNC9(substream);
		ret = IRQ_HANDLED;
	}

	if (interrupts & FUNC1(chan)) {
		rv = FUNC6(drvdata->lpaif_map,
				FUNC0(v, LPAIF_IRQ_PORT_HOST),
				FUNC1(chan));
		if (rv) {
			FUNC4(soc_runtime->dev,
				"error writing to irqclear reg: %d\n", rv);
			return IRQ_NONE;
		}
		FUNC4(soc_runtime->dev, "bus access error\n");
		FUNC8(substream, SNDRV_PCM_STATE_DISCONNECTED);
		ret = IRQ_HANDLED;
	}

	return ret;
}