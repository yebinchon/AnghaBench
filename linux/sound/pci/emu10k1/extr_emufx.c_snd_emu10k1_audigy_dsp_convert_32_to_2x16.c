
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1_fx8010_code {int dummy; } ;


 int A_C_00000000 ;
 int A_C_00010000 ;
 int A_C_80000000 ;
 int A_C_ffffffff ;
 int A_GPR (int) ;
 int A_OP (struct snd_emu10k1_fx8010_code*,int *,int ,int,int,int,int) ;
 int iACC3 ;
 int iANDXOR ;
 int iMACINT0 ;
 int iTSTNEG ;

__attribute__((used)) static int snd_emu10k1_audigy_dsp_convert_32_to_2x16(
    struct snd_emu10k1_fx8010_code *icode,
    u32 *ptr, int tmp, int bit_shifter16,
    int reg_in, int reg_out)
{
 A_OP(icode, ptr, iACC3, A_GPR(tmp + 1), reg_in, A_C_00000000, A_C_00000000);
 A_OP(icode, ptr, iANDXOR, A_GPR(tmp), A_GPR(tmp + 1), A_GPR(bit_shifter16 - 1), A_C_00000000);
 A_OP(icode, ptr, iTSTNEG, A_GPR(tmp + 2), A_GPR(tmp), A_C_80000000, A_GPR(bit_shifter16 - 2));
 A_OP(icode, ptr, iANDXOR, A_GPR(tmp + 2), A_GPR(tmp + 2), A_C_80000000, A_C_00000000);
 A_OP(icode, ptr, iANDXOR, A_GPR(tmp), A_GPR(tmp), A_GPR(bit_shifter16 - 3), A_C_00000000);
 A_OP(icode, ptr, iMACINT0, A_GPR(tmp), A_C_00000000, A_GPR(tmp), A_C_00010000);
 A_OP(icode, ptr, iANDXOR, reg_out, A_GPR(tmp), A_C_ffffffff, A_GPR(tmp + 2));
 A_OP(icode, ptr, iACC3, reg_out + 1, A_GPR(tmp + 1), A_C_00000000, A_C_00000000);
 return 1;
}
