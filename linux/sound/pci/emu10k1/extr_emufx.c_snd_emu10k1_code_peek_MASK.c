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
struct snd_emu10k1_fx8010_code {int /*<<< orphan*/ * code; int /*<<< orphan*/  code_valid; } ;
struct snd_emu10k1 {scalar_t__ audigy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int) ; 

__attribute__((used)) static int FUNC4(struct snd_emu10k1 *emu,
				 struct snd_emu10k1_fx8010_code *icode)
{
	u32 pc;

	FUNC0(icode->code_valid, 0, sizeof(icode->code_valid));
	for (pc = 0; pc < (emu->audigy ? 2*1024 : 2*512); pc += 2) {
		FUNC2(pc / 2, icode->code_valid);
		if (FUNC1(FUNC3(emu, pc + 0), &icode->code[pc + 0]))
			return -EFAULT;
		if (FUNC1(FUNC3(emu, pc + 1), &icode->code[pc + 1]))
			return -EFAULT;
	}
	return 0;
}