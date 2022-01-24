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
typedef  int u16 ;
struct snd_m3 {int dummy; } ;

/* Variables and functions */
 int AC97_VENDOR_ID1 ; 
 scalar_t__ FUNC0 (struct snd_m3*) ; 
 int FUNC1 (struct snd_m3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_m3*,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_m3 *chip)
{
	u16 ret;

	if (FUNC0(chip))
		return 1;

	FUNC2(chip, 0x80 | (AC97_VENDOR_ID1 & 0x7f), 0x30);

	if (FUNC0(chip))
		return 1;

	ret = FUNC1(chip, 0x32);

	return (ret == 0) || (ret == 0xffff);
}