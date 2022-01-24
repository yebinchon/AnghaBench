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
struct snd_pcm_substream {TYPE_2__* runtime; struct aaci* private_data; } ;
struct aaci_runtime {int cr; int /*<<< orphan*/ * substream; } ;
struct aaci {int /*<<< orphan*/  irq_lock; TYPE_1__* dev; int /*<<< orphan*/  users; } ;
struct TYPE_4__ {struct aaci_runtime* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int CR_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct aaci*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct aaci *aaci = substream->private_data;
	struct aaci_runtime *aacirun = substream->runtime->private_data;

	FUNC0(aacirun->cr & CR_EN);

	aacirun->substream = NULL;

	FUNC2(&aaci->irq_lock);
	if (!--aaci->users)
		FUNC1(aaci->dev->irq[0], aaci);
	FUNC3(&aaci->irq_lock);

	return 0;
}