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
struct snd_ca0106 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  snd_ca0106_proc_i2c_write ; 
 int /*<<< orphan*/  snd_ca0106_proc_iec958 ; 
 int /*<<< orphan*/ * snd_ca0106_proc_reg_read1 ; 
 int /*<<< orphan*/  snd_ca0106_proc_reg_read16 ; 
 int /*<<< orphan*/  snd_ca0106_proc_reg_read2 ; 
 int /*<<< orphan*/ * snd_ca0106_proc_reg_read32 ; 
 int /*<<< orphan*/  snd_ca0106_proc_reg_read8 ; 
 int /*<<< orphan*/  snd_ca0106_proc_reg_write ; 
 int /*<<< orphan*/  snd_ca0106_proc_reg_write32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_ca0106*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct snd_ca0106*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_ca0106 *emu)
{
	FUNC0(emu->card, "iec958", emu, snd_ca0106_proc_iec958);
	FUNC1(emu->card, "ca0106_reg32", emu,
			     snd_ca0106_proc_reg_read32,
			     snd_ca0106_proc_reg_write32);
	FUNC0(emu->card, "ca0106_reg16", emu,
			     snd_ca0106_proc_reg_read16);
	FUNC0(emu->card, "ca0106_reg8", emu,
			     snd_ca0106_proc_reg_read8);
	FUNC1(emu->card, "ca0106_regs1", emu,
			     snd_ca0106_proc_reg_read1,
			     snd_ca0106_proc_reg_write);
	FUNC1(emu->card, "ca0106_i2c", emu, NULL,
			     snd_ca0106_proc_i2c_write);
	FUNC0(emu->card, "ca0106_regs2", emu,
			     snd_ca0106_proc_reg_read2);
	return 0;
}