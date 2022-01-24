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
struct uniperif {scalar_t__ state; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/ * substream; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 scalar_t__ UNIPERIF_STATE_STOPPED ; 
 struct sti_uniperiph_data* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uniperif*) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct sti_uniperiph_data *priv = FUNC0(dai);
	struct uniperif *player = priv->dai_data.uni;
	unsigned long flags;

	FUNC1(&player->irq_lock, flags);
	if (player->state != UNIPERIF_STATE_STOPPED)
		/* Stop the player */
		FUNC3(player);

	player->substream = NULL;
	FUNC2(&player->irq_lock, flags);
}