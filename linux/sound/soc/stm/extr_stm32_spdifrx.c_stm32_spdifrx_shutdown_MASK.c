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
struct stm32_spdifrx_data {int /*<<< orphan*/  kclk; int /*<<< orphan*/ * substream; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_spdifrx_data* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
				   struct snd_soc_dai *cpu_dai)
{
	struct stm32_spdifrx_data *spdifrx = FUNC1(cpu_dai);

	spdifrx->substream = NULL;
	FUNC0(spdifrx->kclk);
}