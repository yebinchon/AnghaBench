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
struct fsl_asrc_pair {int index; struct fsl_asrc* asrc_priv; struct asrc_config* config; } ;
struct fsl_asrc {int channel_bits; int /*<<< orphan*/  regmap; struct clk** asrck_clk; } ;
struct clk {int dummy; } ;
struct asrc_config {int channel_num; scalar_t__ output_word_width; int input_sample_rate; int output_sample_rate; size_t inclk; size_t outclk; int /*<<< orphan*/  input_word_width; } ;
typedef  enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int,int,int) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int,int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int,int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  ASRC_INPUTFIFO_THRESHOLD ; 
 scalar_t__ ASRC_WIDTH_8_BIT ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int ASRMCR1i_IWD_MASK ; 
 int FUNC24 (scalar_t__) ; 
 int ASRMCR1i_OW16_MASK ; 
 int ASRMCRi_BUFSTALLi ; 
 int ASRMCRi_BUFSTALLi_MASK ; 
 int EINVAL ; 
 int IDEAL_RATIO_RATE ; 
 size_t IN ; 
 size_t INCLK_NONE ; 
 size_t OUT ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  REG_ASRCFG ; 
 int /*<<< orphan*/  REG_ASRCNCR ; 
 int /*<<< orphan*/  REG_ASRCSR ; 
 int /*<<< orphan*/  REG_ASRCTR ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (struct clk*) ; 
 int** clk_map ; 
 int FUNC29 (struct fsl_asrc_pair*,int) ; 
 int /*<<< orphan*/  FUNC30 (int,int,int*,int*) ; 
 int FUNC31 (struct fsl_asrc_pair*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (struct fsl_asrc_pair*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,...) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* supported_asrc_rate ; 

__attribute__((used)) static int FUNC35(struct fsl_asrc_pair *pair)
{
	struct asrc_config *config = pair->config;
	struct fsl_asrc *asrc_priv = pair->asrc_priv;
	enum asrc_pair_index index = pair->index;
	u32 inrate, outrate, indiv, outdiv;
	u32 clk_index[2], div[2];
	int in, out, channels;
	int pre_proc, post_proc;
	struct clk *clk;
	bool ideal;

	if (!config) {
		FUNC33("invalid pair config\n");
		return -EINVAL;
	}

	/* Validate channels */
	if (config->channel_num < 1 || config->channel_num > 10) {
		FUNC33("does not support %d channels\n", config->channel_num);
		return -EINVAL;
	}

	/* Validate output width */
	if (config->output_word_width == ASRC_WIDTH_8_BIT) {
		FUNC33("does not support 8bit width output\n");
		return -EINVAL;
	}

	inrate = config->input_sample_rate;
	outrate = config->output_sample_rate;
	ideal = config->inclk == INCLK_NONE;

	/* Validate input and output sample rates */
	for (in = 0; in < FUNC0(supported_asrc_rate); in++)
		if (inrate == supported_asrc_rate[in])
			break;

	if (in == FUNC0(supported_asrc_rate)) {
		FUNC33("unsupported input sample rate: %dHz\n", inrate);
		return -EINVAL;
	}

	for (out = 0; out < FUNC0(supported_asrc_rate); out++)
		if (outrate == supported_asrc_rate[out])
			break;

	if (out == FUNC0(supported_asrc_rate)) {
		FUNC33("unsupported output sample rate: %dHz\n", outrate);
		return -EINVAL;
	}

	if ((outrate >= 5512 && outrate <= 30000) &&
	    (outrate > 24 * inrate || inrate > 8 * outrate)) {
		FUNC33("exceed supported ratio range [1/24, 8] for \
				inrate/outrate: %d/%d\n", inrate, outrate);
		return -EINVAL;
	}

	/* Validate input and output clock sources */
	clk_index[IN] = clk_map[IN][config->inclk];
	clk_index[OUT] = clk_map[OUT][config->outclk];

	/* We only have output clock for ideal ratio mode */
	clk = asrc_priv->asrck_clk[clk_index[ideal ? OUT : IN]];

	div[IN] = FUNC28(clk) / inrate;
	if (div[IN] == 0) {
		FUNC33("failed to support input sample rate %dHz by asrck_%x\n",
				inrate, clk_index[ideal ? OUT : IN]);
		return -EINVAL;
	}

	clk = asrc_priv->asrck_clk[clk_index[OUT]];

	/* Use fixed output rate for Ideal Ratio mode (INCLK_NONE) */
	if (ideal)
		div[OUT] = FUNC28(clk) / IDEAL_RATIO_RATE;
	else
		div[OUT] = FUNC28(clk) / outrate;

	if (div[OUT] == 0) {
		FUNC33("failed to support output sample rate %dHz by asrck_%x\n",
				outrate, clk_index[OUT]);
		return -EINVAL;
	}

	/* Set the channel number */
	channels = config->channel_num;

	if (asrc_priv->channel_bits < 4)
		channels /= 2;

	/* Update channels for current pair */
	FUNC34(asrc_priv->regmap, REG_ASRCNCR,
			   FUNC12(index, asrc_priv->channel_bits),
			   FUNC11(index, channels, asrc_priv->channel_bits));

	/* Default setting: Automatic selection for processing mode */
	FUNC34(asrc_priv->regmap, REG_ASRCTR,
			   FUNC18(index), FUNC17(index));
	FUNC34(asrc_priv->regmap, REG_ASRCTR,
			   FUNC22(index), 0);

	/* Set the input and output clock sources */
	FUNC34(asrc_priv->regmap, REG_ASRCSR,
			   FUNC14(index) | FUNC16(index),
			   FUNC13(index, clk_index[IN]) |
			   FUNC15(index, clk_index[OUT]));

	/* Calculate the input clock divisors */
	indiv = FUNC29(pair, div[IN]);
	outdiv = FUNC29(pair, div[OUT]);

	/* Suppose indiv and outdiv includes prescaler, so add its MASK too */
	FUNC34(asrc_priv->regmap, FUNC25(index),
			   FUNC6(index) | FUNC3(index) |
			   FUNC4(index) | FUNC1(index),
			   FUNC5(index, outdiv) | FUNC2(index, indiv));

	/* Implement word_width configurations */
	FUNC34(asrc_priv->regmap, FUNC27(index),
			   ASRMCR1i_OW16_MASK | ASRMCR1i_IWD_MASK,
			   FUNC24(config->output_word_width) |
			   FUNC23(config->input_word_width));

	/* Enable BUFFER STALL */
	FUNC34(asrc_priv->regmap, FUNC26(index),
			   ASRMCRi_BUFSTALLi_MASK, ASRMCRi_BUFSTALLi);

	/* Set default thresholds for input and output FIFO */
	FUNC32(pair, ASRC_INPUTFIFO_THRESHOLD,
				ASRC_INPUTFIFO_THRESHOLD);

	/* Configure the following only for Ideal Ratio mode */
	if (!ideal)
		return 0;

	/* Clear ASTSx bit to use Ideal Ratio mode */
	FUNC34(asrc_priv->regmap, REG_ASRCTR,
			   FUNC18(index), 0);

	/* Enable Ideal Ratio mode */
	FUNC34(asrc_priv->regmap, REG_ASRCTR,
			   FUNC20(index) | FUNC22(index),
			   FUNC19(index) | FUNC21(index));

	FUNC30(inrate, outrate, &pre_proc, &post_proc);

	/* Apply configurations for pre- and post-processing */
	FUNC34(asrc_priv->regmap, REG_ASRCFG,
			   FUNC10(index) |	FUNC8(index),
			   FUNC9(index, pre_proc) |
			   FUNC7(index, post_proc));

	return FUNC31(pair, inrate, outrate);
}