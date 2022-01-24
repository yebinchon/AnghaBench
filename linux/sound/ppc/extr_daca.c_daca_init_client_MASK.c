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
struct pmac_keywest {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DACA_REG_AVOL ; 
 int /*<<< orphan*/  DACA_REG_GCFG ; 
 int /*<<< orphan*/  DACA_REG_SR ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pmac_keywest *i2c)
{
	unsigned short wdata = 0x00;
	/* SR: no swap, 1bit delay, 32-48kHz */
	/* GCFG: power amp inverted, DAC on */
	if (FUNC1(i2c->client, DACA_REG_SR, 0x08) < 0 ||
	    FUNC1(i2c->client, DACA_REG_GCFG, 0x05) < 0)
		return -EINVAL;
	return FUNC0(i2c->client, DACA_REG_AVOL,
					  2, (unsigned char*)&wdata);
}