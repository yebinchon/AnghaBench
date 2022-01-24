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
struct snd_soc_card {int dummy; } ;
struct link_info {int cpu; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct asoc_simple_priv {int dummy; } ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PREFIX ; 
 int FUNC0 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct link_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  simple_dai_link_of ; 
 int /*<<< orphan*/  simple_dai_link_of_dpcm ; 
 int FUNC5 (struct asoc_simple_priv*,struct link_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,struct asoc_simple_priv*) ; 
 struct snd_soc_card* FUNC7 (struct asoc_simple_priv*) ; 
 struct device* FUNC8 (struct asoc_simple_priv*) ; 

__attribute__((used)) static int FUNC9(struct asoc_simple_priv *priv)
{
	struct device *dev = FUNC8(priv);
	struct device_node *top = dev->of_node;
	struct snd_soc_card *card = FUNC7(priv);
	struct link_info li;
	int ret;

	if (!top)
		return -EINVAL;

	ret = FUNC3(card, PREFIX);
	if (ret < 0)
		return ret;

	ret = FUNC2(card, PREFIX);
	if (ret < 0)
		return ret;

	ret = FUNC1(card, PREFIX);
	if (ret < 0)
		return ret;

	/* Single/Muti DAI link(s) & New style of DT node */
	FUNC4(&li, 0, sizeof(li));
	for (li.cpu = 1; li.cpu >= 0; li.cpu--) {
		/*
		 * Detect all CPU first, and Detect all Codec 2nd.
		 *
		 * In Normal sound case, all DAIs are detected
		 * as "CPU-Codec".
		 *
		 * In DPCM sound case,
		 * all CPUs   are detected as "CPU-dummy", and
		 * all Codecs are detected as "dummy-Codec".
		 * To avoid random sub-device numbering,
		 * detect "dummy-Codec" in last;
		 */
		ret = FUNC5(priv, &li,
					   simple_dai_link_of,
					   simple_dai_link_of_dpcm);
		if (ret < 0)
			return ret;
	}

	ret = FUNC0(card, PREFIX);
	if (ret < 0)
		return ret;

	ret = FUNC6(top, priv);

	return ret;
}