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
struct snd_es18xx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_es18xx*,unsigned char,unsigned char,unsigned char) ; 
 int FUNC1 (struct snd_es18xx*,unsigned char,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct snd_es18xx *chip, unsigned char reg,
			       unsigned char mask, unsigned char val)
{
	if (reg < 0xa0)
		return FUNC1(chip, reg, mask, val);
	else
		return FUNC0(chip, reg, mask, val);
}