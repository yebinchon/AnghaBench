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
typedef  int u32 ;
struct snd_ymfpci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_CONFIG ; 
 int /*<<< orphan*/  YDSXGR_STATUS ; 
 int FUNC0 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ymfpci *chip)
{
	u32 val;
	int timeout = 1000;

	val = FUNC0(chip, YDSXGR_CONFIG);
	if (val)
		FUNC1(chip, YDSXGR_CONFIG, 0x00000000);
	while (timeout-- > 0) {
		val = FUNC0(chip, YDSXGR_STATUS);
		if ((val & 0x00000002) == 0)
			break;
	}
}