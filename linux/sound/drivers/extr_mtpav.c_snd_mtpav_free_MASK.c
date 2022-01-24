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
struct snd_card {struct mtpav* private_data; } ;
struct mtpav {scalar_t__ istimer; scalar_t__ irq; int /*<<< orphan*/  res_port; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtpav*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_card *card)
{
	struct mtpav *crd = card->private_data;
	unsigned long flags;

	FUNC3(&crd->spinlock, flags);
	if (crd->istimer > 0)
		FUNC2(crd);
	FUNC4(&crd->spinlock, flags);
	if (crd->irq >= 0)
		FUNC0(crd->irq, (void *)crd);
	FUNC1(crd->res_port);
}