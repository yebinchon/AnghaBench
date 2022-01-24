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
struct snd_rme9652 {scalar_t__ irq; int /*<<< orphan*/  pci; scalar_t__ port; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_rme9652*) ; 

__attribute__((used)) static int FUNC6(struct snd_rme9652 *rme9652)
{
	if (rme9652->irq >= 0)
		FUNC4(rme9652);
	FUNC5(rme9652);

	if (rme9652->irq >= 0)
		FUNC0(rme9652->irq, (void *)rme9652);
	FUNC1(rme9652->iobase);
	if (rme9652->port)
		FUNC3(rme9652->pci);

	FUNC2(rme9652->pci);
	return 0;
}