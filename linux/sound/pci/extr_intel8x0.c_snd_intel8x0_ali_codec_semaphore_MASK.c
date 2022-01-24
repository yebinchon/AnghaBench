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
struct intel8x0 {TYPE_1__* card; int /*<<< orphan*/  in_ac97_init; scalar_t__ buggy_semaphore; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_CAS ; 
 int ALI_CAS_SEM_BUSY ; 
 int /*<<< orphan*/  ALI_CSPSR_CODEC_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct intel8x0 *chip)
{
	int time = 100;
	if (chip->buggy_semaphore)
		return 0; /* just ignore ... */
	while (--time && (FUNC2(chip, FUNC0(ALI_CAS)) & ALI_CAS_SEM_BUSY))
		FUNC4(1);
	if (! time && ! chip->in_ac97_init)
		FUNC1(chip->card->dev, "ali_codec_semaphore timeout\n");
	return FUNC3(chip, ALI_CSPSR_CODEC_READY);
}