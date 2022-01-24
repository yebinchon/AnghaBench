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
struct snd_ad1816a {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_INDIR_ADDR ; 
 int /*<<< orphan*/  AD1816A_INDIR_DATA_HIGH ; 
 int /*<<< orphan*/  AD1816A_INDIR_DATA_LOW ; 
 int FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static unsigned short FUNC2(struct snd_ad1816a *chip, unsigned char reg)
{
	FUNC1(chip, AD1816A_INDIR_ADDR, reg & 0x3f);
	return FUNC0(chip, AD1816A_INDIR_DATA_LOW) |
		(FUNC0(chip, AD1816A_INDIR_DATA_HIGH) << 8);
}