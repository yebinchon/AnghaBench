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
struct echoaudio {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  iores; int /*<<< orphan*/  dsp_registers; int /*<<< orphan*/  commpage_dma_buf; scalar_t__ comm_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip)
{
	if (chip->comm_page)
		FUNC6(chip);

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);

	if (chip->comm_page)
		FUNC7(&chip->commpage_dma_buf);

	FUNC2(chip->dsp_registers);
	FUNC5(chip->iores);
	FUNC4(chip->pci);

	/* release chip data */
	FUNC0(chip);
	FUNC3(chip);
	return 0;
}