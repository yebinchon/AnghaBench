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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dummy; } ;
struct atmel_pdmic {TYPE_1__* pdata; } ;
struct TYPE_2__ {int mic_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDMIC_DSPR1 ; 
 int /*<<< orphan*/  PDMIC_DSPR1_OFFSET_MASK ; 
 int PDMIC_DSPR1_OFFSET_SHIFT ; 
 struct atmel_pdmic* FUNC0 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct snd_soc_card *card = FUNC1(component);
	struct atmel_pdmic *dd = FUNC0(card);

	FUNC2(component, PDMIC_DSPR1, PDMIC_DSPR1_OFFSET_MASK,
		     (u32)(dd->pdata->mic_offset << PDMIC_DSPR1_OFFSET_SHIFT));

	return 0;
}