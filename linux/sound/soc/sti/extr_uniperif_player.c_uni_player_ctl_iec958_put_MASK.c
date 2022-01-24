#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_aes_iec958 {int /*<<< orphan*/ * status; } ;
struct TYPE_7__ {struct snd_aes_iec958 iec958; } ;
struct uniperif {int /*<<< orphan*/  irq_lock; TYPE_5__* substream; int /*<<< orphan*/  ctrl_lock; TYPE_2__ stream_settings; } ;
struct TYPE_6__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * status; } ;
struct TYPE_9__ {TYPE_3__ iec958; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct TYPE_10__ {int /*<<< orphan*/ * runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dai* FUNC2 (struct snd_kcontrol*) ; 
 struct sti_uniperiph_data* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uniperif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dai *dai = FUNC2(kcontrol);
	struct sti_uniperiph_data *priv = FUNC3(dai);
	struct uniperif *player = priv->dai_data.uni;
	struct snd_aes_iec958 *iec958 =  &player->stream_settings.iec958;
	unsigned long flags;

	FUNC0(&player->ctrl_lock);
	iec958->status[0] = ucontrol->value.iec958.status[0];
	iec958->status[1] = ucontrol->value.iec958.status[1];
	iec958->status[2] = ucontrol->value.iec958.status[2];
	iec958->status[3] = ucontrol->value.iec958.status[3];
	FUNC1(&player->ctrl_lock);

	FUNC4(&player->irq_lock, flags);
	if (player->substream && player->substream->runtime)
		FUNC6(player,
					      player->substream->runtime);
	else
		FUNC6(player, NULL);

	FUNC5(&player->irq_lock, flags);
	return 0;
}