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
struct snd_soc_component {int /*<<< orphan*/  list; struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_card*,int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct snd_soc_card *card = component->card;

	if (card)
		FUNC1(card, false);

	FUNC0(&component->list);
}