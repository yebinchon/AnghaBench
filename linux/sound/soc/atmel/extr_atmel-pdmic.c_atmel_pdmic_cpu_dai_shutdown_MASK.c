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
struct atmel_pdmic {int /*<<< orphan*/  pclk; int /*<<< orphan*/  gclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDMIC_IDR ; 
 int /*<<< orphan*/  PDMIC_IDR_OVRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_pdmic* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream,
					struct snd_soc_dai *cpu_dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct atmel_pdmic *dd = FUNC2(rtd->card);

	/* Disable the overrun error interrupt */
	FUNC1(dd->regmap, PDMIC_IDR, PDMIC_IDR_OVRE);

	FUNC0(dd->gclk);
	FUNC0(dd->pclk);
}