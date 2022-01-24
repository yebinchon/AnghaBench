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
struct snd_card_asihpi {int /*<<< orphan*/  t; } ;
struct hpi_adapter {TYPE_1__* snd_card; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hpi_adapter *a)
{
	struct snd_card_asihpi *asihpi;

	FUNC0(!a || !a->snd_card || !a->snd_card->private_data);
	asihpi = (struct snd_card_asihpi *)a->snd_card->private_data;
	FUNC1(&asihpi->t);
}