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
struct nm256 {scalar_t__ irq; struct nm256* ac97_regs; int /*<<< orphan*/  pci; int /*<<< orphan*/  res_buffer; int /*<<< orphan*/  res_cport; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cport; TYPE_1__* streams; } ;
struct TYPE_2__ {scalar_t__ running; } ;

/* Variables and functions */
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct nm256*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nm256*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nm256*) ; 
 int /*<<< orphan*/  FUNC6 (struct nm256*) ; 

__attribute__((used)) static int FUNC7(struct nm256 *chip)
{
	if (chip->streams[SNDRV_PCM_STREAM_PLAYBACK].running)
		FUNC6(chip);
	if (chip->streams[SNDRV_PCM_STREAM_CAPTURE].running)
		FUNC5(chip);

	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);

	FUNC1(chip->cport);
	FUNC1(chip->buffer);
	FUNC4(chip->res_cport);
	FUNC4(chip->res_buffer);

	FUNC3(chip->pci);
	FUNC2(chip->ac97_regs);
	FUNC2(chip);
	return 0;
}