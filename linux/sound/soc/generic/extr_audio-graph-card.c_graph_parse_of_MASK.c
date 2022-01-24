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
struct asoc_simple_priv {int dummy; } ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_card*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_soc_card*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_soc_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  graph_dai_link_of ; 
 int /*<<< orphan*/  graph_dai_link_of_dpcm ; 
 int FUNC3 (struct asoc_simple_priv*,struct link_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct link_info*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_card* FUNC5 (struct asoc_simple_priv*) ; 

__attribute__((used)) static int FUNC6(struct asoc_simple_priv *priv)
{
	struct snd_soc_card *card = FUNC5(priv);
	struct link_info li;
	int ret;

	ret = FUNC2(card, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC1(card, NULL);
	if (ret < 0)
		return ret;

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
		ret = FUNC3(priv, &li,
					  graph_dai_link_of,
					  graph_dai_link_of_dpcm);
		if (ret < 0)
			return ret;
	}

	return FUNC0(card, NULL);
}