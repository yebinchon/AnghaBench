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
struct snd_card_als4000 {int /*<<< orphan*/  pci; int /*<<< orphan*/  iobase; } ;
struct snd_card {struct snd_card_als4000* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALS4K_GCR8C_MISC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card_als4000*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( struct snd_card *card )
{
	struct snd_card_als4000 *acard = card->private_data;

	/* make sure that interrupts are disabled */
	FUNC3(acard->iobase, ALS4K_GCR8C_MISC_CTRL, 0);
	/* free resources */
	FUNC2(acard);
	FUNC1(acard->pci);
	FUNC0(acard->pci);
}