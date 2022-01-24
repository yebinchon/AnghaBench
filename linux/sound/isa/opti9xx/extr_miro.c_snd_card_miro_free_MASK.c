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
struct snd_miro {int /*<<< orphan*/  res_mc_base; TYPE_1__* aci; int /*<<< orphan*/  res_aci_port; } ;
struct snd_card {struct snd_miro* private_data; } ;
struct TYPE_2__ {scalar_t__ aci_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_card *card)
{
	struct snd_miro *miro = card->private_data;

	FUNC0(miro->res_aci_port);
	if (miro->aci)
		miro->aci->aci_port = 0;
	FUNC0(miro->res_mc_base);
}