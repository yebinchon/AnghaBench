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
struct snd_soc_dai_link_component {int /*<<< orphan*/  of_node; int /*<<< orphan*/  dai_name; } ;
struct of_phandle_args {int /*<<< orphan*/  args_count; int /*<<< orphan*/  np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELL ; 
 int /*<<< orphan*/  DAI ; 
 int FUNC0 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device_node *node,
				 struct snd_soc_dai_link_component *dlc,
				 int *is_single_link)
{
	struct of_phandle_args args;
	int ret;

	if (!node)
		return 0;

	/*
	 * Get node via "sound-dai = <&phandle port>"
	 * it will be used as xxx_of_node on soc_bind_dai_link()
	 */
	ret = FUNC0(node, DAI, CELL, 0, &args);
	if (ret)
		return ret;

	/*
	 * FIXME
	 *
	 * Here, dlc->dai_name is pointer to CPU/Codec DAI name.
	 * If user unbinded CPU or Codec driver, but not for Sound Card,
	 * dlc->dai_name is keeping unbinded CPU or Codec
	 * driver's pointer.
	 *
	 * If user re-bind CPU or Codec driver again, ALSA SoC will try
	 * to rebind Card via snd_soc_try_rebind_card(), but because of
	 * above reason, it might can't bind Sound Card.
	 * Because Sound Card is pointing to released dai_name pointer.
	 *
	 * To avoid this rebind Card issue,
	 * 1) It needs to alloc memory to keep dai_name eventhough
	 *    CPU or Codec driver was unbinded, or
	 * 2) user need to rebind Sound Card everytime
	 *    if he unbinded CPU or Codec.
	 */
	ret = FUNC1(node, &dlc->dai_name);
	if (ret < 0)
		return ret;

	dlc->of_node = args.np;

	if (is_single_link)
		*is_single_link = !args.args_count;

	return 0;
}