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
struct TYPE_2__ {int /*<<< orphan*/  reg_data8; int /*<<< orphan*/  reg_regsel; int /*<<< orphan*/  reg_data16; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 

void FUNC3(struct snd_gus_card * gus, unsigned int addr)
{
	FUNC1(0x43, gus->gf1.reg_regsel);
	FUNC0();
	FUNC2((unsigned short) addr, gus->gf1.reg_data16);
	FUNC0();
	FUNC1(0x44, gus->gf1.reg_regsel);
	FUNC0();
	FUNC1((unsigned char) (addr >> 16), gus->gf1.reg_data8);
	FUNC0();
}