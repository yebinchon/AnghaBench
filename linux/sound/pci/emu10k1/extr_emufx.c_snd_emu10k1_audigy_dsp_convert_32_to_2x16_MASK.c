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
typedef  int /*<<< orphan*/  u32 ;
struct snd_emu10k1_fx8010_code {int dummy; } ;

/* Variables and functions */
 int A_C_00000000 ; 
 int A_C_00010000 ; 
 int A_C_80000000 ; 
 int A_C_ffffffff ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1_fx8010_code*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  iACC3 ; 
 int /*<<< orphan*/  iANDXOR ; 
 int /*<<< orphan*/  iMACINT0 ; 
 int /*<<< orphan*/  iTSTNEG ; 

__attribute__((used)) static int FUNC2(
				struct snd_emu10k1_fx8010_code *icode,
				u32 *ptr, int tmp, int bit_shifter16,
				int reg_in, int reg_out)
{
	FUNC1(icode, ptr, iACC3, FUNC0(tmp + 1), reg_in, A_C_00000000, A_C_00000000);
	FUNC1(icode, ptr, iANDXOR, FUNC0(tmp), FUNC0(tmp + 1), FUNC0(bit_shifter16 - 1), A_C_00000000);
	FUNC1(icode, ptr, iTSTNEG, FUNC0(tmp + 2), FUNC0(tmp), A_C_80000000, FUNC0(bit_shifter16 - 2));
	FUNC1(icode, ptr, iANDXOR, FUNC0(tmp + 2), FUNC0(tmp + 2), A_C_80000000, A_C_00000000);
	FUNC1(icode, ptr, iANDXOR, FUNC0(tmp), FUNC0(tmp), FUNC0(bit_shifter16 - 3), A_C_00000000);
	FUNC1(icode, ptr, iMACINT0, FUNC0(tmp), A_C_00000000, FUNC0(tmp), A_C_00010000);
	FUNC1(icode, ptr, iANDXOR, reg_out, FUNC0(tmp), A_C_ffffffff, FUNC0(tmp + 2));
	FUNC1(icode, ptr, iACC3, reg_out + 1, FUNC0(tmp + 1), A_C_00000000, A_C_00000000);
	return 1;
}