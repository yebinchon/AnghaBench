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
typedef  scalar_t__ u32 ;
struct of_device_id {scalar_t__ data; } ;
struct fsl_ssi {int has_ipg_clk_name; int synchronous; int use_dma; int fifo_depth; int use_dual_fifo; int /*<<< orphan*/  card_idx; int /*<<< orphan*/ * card_name; int /*<<< orphan*/  dai_fmt; scalar_t__ soc; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FSLSSI_AC97_DAIFMT ; 
 scalar_t__ IMX_DMATYPE_SSI_DUAL ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  fsl_ssi_ids ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC15 (char const*,char) ; 

__attribute__((used)) static int FUNC16(struct fsl_ssi *ssi)
{
	struct device *dev = ssi->dev;
	struct device_node *np = dev->of_node;
	const struct of_device_id *of_id;
	const char *p, *sprop;
	const __be32 *iprop;
	u32 dmas[4];
	int ret;

	of_id = FUNC6(fsl_ssi_ids, dev);
	if (!of_id || !of_id->data)
		return -EINVAL;

	ssi->soc = of_id->data;

	ret = FUNC8(np, "clock-names", "ipg");
	/* Get error code if not found */
	ssi->has_ipg_clk_name = ret >= 0;

	/* Check if being used in AC97 mode */
	sprop = FUNC5(np, "fsl,mode", NULL);
	if (sprop && !FUNC13(sprop, "ac97-slave")) {
		ssi->dai_fmt = FSLSSI_AC97_DAIFMT;

		ret = FUNC10(np, "cell-index", &ssi->card_idx);
		if (ret) {
			FUNC1(dev, "failed to get SSI index property\n");
			return -EINVAL;
		}
		FUNC14(ssi->card_name, "ac97-codec");
	} else if (!FUNC4(np, "fsl,ssi-asynchronous", NULL)) {
		/*
		 * In synchronous mode, STCK and STFS ports are used by RX
		 * as well. So the software should limit the sample rates,
		 * sample bits and channels to be symmetric.
		 *
		 * This is exclusive with FSLSSI_AC97_FORMATS as AC97 runs
		 * in the SSI synchronous mode however it does not have to
		 * limit symmetric sample rates and sample bits.
		 */
		ssi->synchronous = true;
	}

	/* Select DMA or FIQ */
	ssi->use_dma = !FUNC9(np, "fsl,fiq-stream-filter");

	/* Fetch FIFO depth; Set to 8 for older DT without this property */
	iprop = FUNC5(np, "fsl,fifo-depth", NULL);
	if (iprop)
		ssi->fifo_depth = FUNC0(iprop);
	else
		ssi->fifo_depth = 8;

	/* Use dual FIFO mode depending on the support from SDMA script */
	ret = FUNC11(np, "dmas", dmas, 4);
	if (ssi->use_dma && !ret && dmas[2] == IMX_DMATYPE_SSI_DUAL)
		ssi->use_dual_fifo = true;

	/*
	 * Backward compatible for older bindings by manually triggering the
	 * machine driver's probe(). Use /compatible property, including the
	 * address of CPU DAI driver structure, as the name of machine driver
	 *
	 * If card_name is set by AC97 earlier, bypass here since it uses a
	 * different name to register the device.
	 */
	if (!ssi->card_name[0] && FUNC5(np, "codec-handle", NULL)) {
		struct device_node *root = FUNC3("/");

		sprop = FUNC5(root, "compatible", NULL);
		FUNC7(root);
		/* Strip "fsl," in the compatible name if applicable */
		p = FUNC15(sprop, ',');
		if (p)
			sprop = p + 1;
		FUNC12(ssi->card_name, sizeof(ssi->card_name),
			 "snd-soc-%s", sprop);
		FUNC2(ssi->card_name);
		ssi->card_idx = 0;
	}

	return 0;
}