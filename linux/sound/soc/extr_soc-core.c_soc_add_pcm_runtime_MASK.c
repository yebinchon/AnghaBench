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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  num; int /*<<< orphan*/  list; } ;
struct snd_soc_card {int /*<<< orphan*/  num_rtd; int /*<<< orphan*/  rtd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct snd_soc_card *card,
		struct snd_soc_pcm_runtime *rtd)
{
	/* see for_each_card_rtds */
	FUNC0(&rtd->list, &card->rtd_list);
	rtd->num = card->num_rtd;
	card->num_rtd++;
}