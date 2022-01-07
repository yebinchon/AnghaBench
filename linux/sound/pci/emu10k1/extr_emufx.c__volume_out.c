
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1_fx8010_code {int dummy; } ;


 int CC_REG_NONZERO ;
 int C_00000000 ;
 int C_00000001 ;
 int C_00000002 ;
 int C_7fffffff ;
 int C_ffffffff ;
 int GPR_COND ;
 int OP (struct snd_emu10k1_fx8010_code*,int *,int ,int ,int ,int ,int ) ;
 int iACC3 ;
 int iANDXOR ;
 int iMAC0 ;
 int iSKIP ;

__attribute__((used)) static void _volume_out(struct snd_emu10k1_fx8010_code *icode, u32 *ptr, u32 dst, u32 src, u32 vol)
{
 OP(icode, ptr, iANDXOR, C_00000000, vol, C_ffffffff, C_7fffffff);
 OP(icode, ptr, iSKIP, GPR_COND, GPR_COND, CC_REG_NONZERO, C_00000002);
 OP(icode, ptr, iACC3, dst, src, C_00000000, C_00000000);
 OP(icode, ptr, iSKIP, C_00000000, C_7fffffff, C_7fffffff, C_00000001);
 OP(icode, ptr, iMAC0, dst, C_00000000, src, vol);
}
