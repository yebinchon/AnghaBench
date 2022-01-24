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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_pdmic {int /*<<< orphan*/  regmap; struct snd_pcm_substream* substream; int /*<<< orphan*/  gclk; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDMIC_CR ; 
 int /*<<< orphan*/  PDMIC_IER ; 
 int /*<<< orphan*/  PDMIC_IER_OVRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_pdmic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
					struct snd_soc_dai *cpu_dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct atmel_pdmic *dd = FUNC3(rtd->card);
	int ret;

	ret = FUNC1(dd->gclk);
	if (ret)
		return ret;

	ret =  FUNC1(dd->pclk);
	if (ret) {
		FUNC0(dd->gclk);
		return ret;
	}

	/* Clear all bits in the Control Register(PDMIC_CR) */
	FUNC2(dd->regmap, PDMIC_CR, 0);

	dd->substream = substream;

	/* Enable the overrun error interrupt */
	FUNC2(dd->regmap, PDMIC_IER, PDMIC_IER_OVRE);

	return 0;
}