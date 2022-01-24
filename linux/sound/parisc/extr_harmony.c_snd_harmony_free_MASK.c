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
struct TYPE_2__ {scalar_t__ addr; } ;
struct snd_harmony {scalar_t__ irq; int /*<<< orphan*/  iobase; TYPE_1__ sdma; TYPE_1__ gdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct snd_harmony *h)
{
        if (h->gdma.addr)
                FUNC3(&h->gdma);
        if (h->sdma.addr)
                FUNC3(&h->sdma);

	if (h->irq >= 0)
		FUNC0(h->irq, h);

	FUNC1(h->iobase);
	FUNC2(h);
	return 0;
}