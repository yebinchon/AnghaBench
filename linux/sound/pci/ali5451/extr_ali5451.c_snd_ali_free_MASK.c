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
struct snd_ali {scalar_t__ irq; int /*<<< orphan*/  pci_m7101; int /*<<< orphan*/  pci_m1533; struct snd_ali* image; int /*<<< orphan*/  pci; scalar_t__ port; scalar_t__ hw_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_ali*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ali*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ali*) ; 

__attribute__((used)) static int FUNC6(struct snd_ali * codec)
{
	if (codec->hw_initialized)
		FUNC5(codec);
	if (codec->irq >= 0)
		FUNC0(codec->irq, codec);
	if (codec->port)
		FUNC4(codec->pci);
	FUNC3(codec->pci);
#ifdef CONFIG_PM_SLEEP
	kfree(codec->image);
#endif
	FUNC2(codec->pci_m1533);
	FUNC2(codec->pci_m7101);
	FUNC1(codec);
	return 0;
}