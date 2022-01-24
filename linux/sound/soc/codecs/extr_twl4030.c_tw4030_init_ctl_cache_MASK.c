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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_priv {int /*<<< orphan*/ * ctl_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
 int TWL4030_REG_EAR_CTL ; 
 int TWL4030_REG_PRECKR_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct twl4030_priv *twl4030)
{
	int i;
	u8 byte;

	for (i = TWL4030_REG_EAR_CTL; i <= TWL4030_REG_PRECKR_CTL; i++) {
		FUNC0(TWL4030_MODULE_AUDIO_VOICE, &byte, i);
		twl4030->ctl_cache[i - TWL4030_REG_EAR_CTL] = byte;
	}
}