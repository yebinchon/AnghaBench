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
typedef  void* snd_soc_dai_link ;
struct TYPE_2__ {void** dai_link; unsigned int num_links; int /*<<< orphan*/  dev; } ;
struct axg_card {void** link_data; TYPE_1__ card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (void**,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct axg_card *priv,
				     unsigned int num_links)
{
	struct snd_soc_dai_link *links;
	void **ldata;

	links = FUNC1(priv->card.dai_link,
			 num_links * sizeof(*priv->card.dai_link),
			 GFP_KERNEL | __GFP_ZERO);
	ldata = FUNC1(priv->link_data,
			 num_links * sizeof(*priv->link_data),
			 GFP_KERNEL | __GFP_ZERO);

	if (!links || !ldata) {
		FUNC0(priv->card.dev, "failed to allocate links\n");
		return -ENOMEM;
	}

	priv->card.dai_link = links;
	priv->link_data = ldata;
	priv->card.num_links = num_links;
	return 0;
}