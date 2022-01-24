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
struct snd_soc_dai_link {TYPE_1__* platforms; } ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAI_NAME_SIZE ; 
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,unsigned long long,struct device_node*) ; 

int FUNC8(struct device_node *ssi_np,
			     const char *name,
			     struct snd_soc_dai_link *dai,
			     unsigned int *dma_channel_id,
			     unsigned int *dma_id)
{
	struct resource res;
	struct device_node *dma_channel_np, *dma_np;
	const __be32 *iprop;
	int ret;

	dma_channel_np = FUNC6(ssi_np, name, 0);
	if (!dma_channel_np)
		return -EINVAL;

	if (!FUNC2(dma_channel_np, "fsl,ssi-dma-channel")) {
		FUNC5(dma_channel_np);
		return -EINVAL;
	}

	/* Determine the dev_name for the device_node.  This code mimics the
	 * behavior of of_device_make_bus_id(). We need this because ASoC uses
	 * the dev_name() of the device to match the platform (DMA) device with
	 * the CPU (SSI) device.  It's all ugly and hackish, but it works (for
	 * now).
	 *
	 * dai->platform name should already point to an allocated buffer.
	 */
	ret = FUNC1(dma_channel_np, 0, &res);
	if (ret) {
		FUNC5(dma_channel_np);
		return ret;
	}
	FUNC7((char *)dai->platforms->name, DAI_NAME_SIZE, "%llx.%pOFn",
		 (unsigned long long) res.start, dma_channel_np);

	iprop = FUNC4(dma_channel_np, "cell-index", NULL);
	if (!iprop) {
		FUNC5(dma_channel_np);
		return -EINVAL;
	}
	*dma_channel_id = FUNC0(iprop);

	dma_np = FUNC3(dma_channel_np);
	iprop = FUNC4(dma_np, "cell-index", NULL);
	if (!iprop) {
		FUNC5(dma_np);
		FUNC5(dma_channel_np);
		return -EINVAL;
	}
	*dma_id = FUNC0(iprop);

	FUNC5(dma_np);
	FUNC5(dma_channel_np);

	return 0;
}