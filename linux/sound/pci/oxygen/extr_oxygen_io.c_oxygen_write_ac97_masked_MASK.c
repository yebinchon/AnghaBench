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
struct oxygen {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct oxygen*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,unsigned int,unsigned int,int) ; 

void FUNC2(struct oxygen *chip, unsigned int codec,
			      unsigned int index, u16 data, u16 mask)
{
	u16 value = FUNC0(chip, codec, index);
	value &= ~mask;
	value |= data & mask;
	FUNC1(chip, codec, index, value);
}