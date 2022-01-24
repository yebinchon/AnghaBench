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
struct snd_card {int dummy; } ;
struct portman {struct pardevice* pardev; struct snd_card* card; int /*<<< orphan*/  reg_lock; } ;
struct pardevice {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct portman* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card,
			  struct pardevice *pardev,
			  struct portman **rchip)
{
	struct portman *pm;

	*rchip = NULL;

	pm = FUNC0(sizeof(struct portman), GFP_KERNEL);
	if (pm == NULL) 
		return -ENOMEM;

	/* Init chip specific data */
	FUNC1(&pm->reg_lock);
	pm->card = card;
	pm->pardev = pardev;

	*rchip = pm;

	return 0;
}