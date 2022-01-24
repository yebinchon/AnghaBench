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
struct snd_pdacf {size_t index; int /*<<< orphan*/ * card; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** card_list ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pdacf*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC2(struct snd_pdacf *pdacf)
{
	struct pcmcia_device *link = pdacf->p_dev;

	FUNC1(link);

	card_list[pdacf->index] = NULL;
	pdacf->card = NULL;

	FUNC0(pdacf);
	return 0;
}