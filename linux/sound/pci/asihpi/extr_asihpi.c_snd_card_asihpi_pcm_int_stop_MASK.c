#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct snd_card_asihpi {int /*<<< orphan*/  t; int /*<<< orphan*/ * llmode_streampriv; TYPE_2__* hpi; } ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADAPTER_PROPERTY_IRQ_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 struct snd_card_asihpi* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_card_asihpi *card;

	card = FUNC3(substream);

	FUNC1(FUNC0(card->hpi->adapter->index,
		HPI_ADAPTER_PROPERTY_IRQ_RATE, 0, 0));

	if (FUNC2())
		card->llmode_streampriv = NULL;
	else {
		FUNC4(&card->t);
		card->llmode_streampriv = NULL;
		FUNC5(&card->t);
	}
}