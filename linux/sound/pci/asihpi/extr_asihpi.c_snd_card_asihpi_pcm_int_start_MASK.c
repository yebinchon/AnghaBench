#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct snd_card_asihpi_pcm {int dummy; } ;
struct snd_card_asihpi {int /*<<< orphan*/  update_interval_frames; TYPE_2__* hpi; int /*<<< orphan*/  t; struct snd_card_asihpi_pcm* llmode_streampriv; } ;
struct TYPE_6__ {scalar_t__ private_data; } ;
struct TYPE_5__ {TYPE_1__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADAPTER_PROPERTY_IRQ_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct snd_card_asihpi* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_card_asihpi_pcm *dpcm;
	struct snd_card_asihpi *card;

	dpcm = (struct snd_card_asihpi_pcm *)substream->runtime->private_data;
	card = FUNC4(substream);

	FUNC0(FUNC3());
	FUNC5(&card->t);
	card->llmode_streampriv = dpcm;
	FUNC6(&card->t);

	FUNC2(FUNC1(card->hpi->adapter->index,
		HPI_ADAPTER_PROPERTY_IRQ_RATE,
		card->update_interval_frames, 0));
}