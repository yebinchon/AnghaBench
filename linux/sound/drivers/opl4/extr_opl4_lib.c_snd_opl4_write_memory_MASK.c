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
typedef  int u8 ;
struct snd_opl4 {int /*<<< orphan*/  reg_lock; scalar_t__ pcm_port; } ;

/* Variables and functions */
 int OPL4_MODE_BIT ; 
 int /*<<< orphan*/  OPL4_REG_MEMORY_ADDRESS_HIGH ; 
 int /*<<< orphan*/  OPL4_REG_MEMORY_ADDRESS_LOW ; 
 int /*<<< orphan*/  OPL4_REG_MEMORY_ADDRESS_MID ; 
 int /*<<< orphan*/  OPL4_REG_MEMORY_CONFIGURATION ; 
 int /*<<< orphan*/  OPL4_REG_MEMORY_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 int FUNC2 (struct snd_opl4*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl4*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_opl4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct snd_opl4 *opl4, const char *buf, int offset, int size)
{
	unsigned long flags;
	u8 memcfg;

	FUNC5(&opl4->reg_lock, flags);

	memcfg = FUNC2(opl4, OPL4_REG_MEMORY_CONFIGURATION);
	FUNC4(opl4, OPL4_REG_MEMORY_CONFIGURATION, memcfg | OPL4_MODE_BIT);

	FUNC4(opl4, OPL4_REG_MEMORY_ADDRESS_HIGH, offset >> 16);
	FUNC4(opl4, OPL4_REG_MEMORY_ADDRESS_MID, offset >> 8);
	FUNC4(opl4, OPL4_REG_MEMORY_ADDRESS_LOW, offset);

	FUNC3(opl4);
	FUNC0(OPL4_REG_MEMORY_DATA, opl4->pcm_port);
	FUNC3(opl4);
	FUNC1(opl4->pcm_port + 1, buf, size);

	FUNC4(opl4, OPL4_REG_MEMORY_CONFIGURATION, memcfg);

	FUNC6(&opl4->reg_lock, flags);
}