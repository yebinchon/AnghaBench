#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct fsl_sai {int /*<<< orphan*/  dma_params_rx; int /*<<< orphan*/  dma_params_tx; int /*<<< orphan*/  regmap; TYPE_1__* soc_data; } ;
struct TYPE_2__ {unsigned int reg_offset; scalar_t__ fifo_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSL_SAI_CR1_RFW_MASK ; 
 int /*<<< orphan*/  FSL_SAI_CSR_SR ; 
 scalar_t__ FSL_SAI_MAXBURST_RX ; 
 scalar_t__ FSL_SAI_MAXBURST_TX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct fsl_sai* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai*,struct fsl_sai*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dai *cpu_dai)
{
	struct fsl_sai *sai = FUNC4(cpu_dai->dev);
	unsigned int ofs = sai->soc_data->reg_offset;

	/* Software Reset for both Tx and Rx */
	FUNC6(sai->regmap, FUNC3(ofs), FSL_SAI_CSR_SR);
	FUNC6(sai->regmap, FUNC1(ofs), FSL_SAI_CSR_SR);
	/* Clear SR bit to finish the reset */
	FUNC6(sai->regmap, FUNC3(ofs), 0);
	FUNC6(sai->regmap, FUNC1(ofs), 0);

	FUNC5(sai->regmap, FUNC2(ofs),
			   FSL_SAI_CR1_RFW_MASK,
			   sai->soc_data->fifo_depth - FSL_SAI_MAXBURST_TX);
	FUNC5(sai->regmap, FUNC0(ofs),
			   FSL_SAI_CR1_RFW_MASK, FSL_SAI_MAXBURST_RX - 1);

	FUNC7(cpu_dai, &sai->dma_params_tx,
				&sai->dma_params_rx);

	FUNC8(cpu_dai, sai);

	return 0;
}