
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel8x0 {int dummy; } ;


 int ALI_FIFOCR1 ;
 int ALI_FIFOCR2 ;
 int ALI_FIFOCR3 ;
 int ALI_INTERFACECR ;
 int ALI_INTERRUPTCR ;
 int ALI_INTERRUPTSR ;
 int ALI_SCR ;
 int ICHREG (int ) ;
 int ICH_ALI_IF_PI ;
 int ICH_ALI_IF_PO ;
 int ICH_ALI_SC_RESET ;
 int iputdword (struct intel8x0*,int ,int) ;

__attribute__((used)) static void do_ali_reset(struct intel8x0 *chip)
{
 iputdword(chip, ICHREG(ALI_SCR), ICH_ALI_SC_RESET);
 iputdword(chip, ICHREG(ALI_FIFOCR1), 0x83838383);
 iputdword(chip, ICHREG(ALI_FIFOCR2), 0x83838383);
 iputdword(chip, ICHREG(ALI_FIFOCR3), 0x83838383);
 iputdword(chip, ICHREG(ALI_INTERFACECR),
    ICH_ALI_IF_PI|ICH_ALI_IF_PO);
 iputdword(chip, ICHREG(ALI_INTERRUPTCR), 0x00000000);
 iputdword(chip, ICHREG(ALI_INTERRUPTSR), 0x00000000);
}
