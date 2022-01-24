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
struct snd_soc_dai_link_component {struct device_node* of_node; int /*<<< orphan*/  dai_name; } ;
struct of_phandle_args {int args_count; int /*<<< orphan*/ * args; struct device_node* np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int FUNC3 (struct of_phandle_args*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device_node *ep,
				 struct snd_soc_dai_link_component *dlc,
				 int *is_single_link)
{
	struct device_node *node;
	struct of_phandle_args args;
	int ret;

	if (!ep)
		return 0;

	node = FUNC2(ep);

	/* Get dai->name */
	args.np		= node;
	args.args[0]	= FUNC0(ep);
	args.args_count	= (FUNC1(node) > 1);

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
	ret = FUNC3(&args, &dlc->dai_name);
	if (ret < 0)
		return ret;

	dlc->of_node = node;

	if (is_single_link)
		*is_single_link = FUNC1(node) == 1;

	return 0;
}