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
struct snd_ymfpci {int /*<<< orphan*/  spdif_opened; int /*<<< orphan*/  rear_opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  YDSXGR_SECCONFIG ; 
 int FUNC0 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct snd_ymfpci *chip)
{
	if (! chip->rear_opened) {
		if (! chip->spdif_opened) /* set AC3 */
			FUNC2(chip, YDSXGR_MODE,
					  FUNC0(chip, YDSXGR_MODE) | (1 << 30));
		/* enable second codec (4CHEN) */
		FUNC3(chip, YDSXGR_SECCONFIG,
				  (FUNC1(chip, YDSXGR_SECCONFIG) & ~0x0330) | 0x0010);
	}
}