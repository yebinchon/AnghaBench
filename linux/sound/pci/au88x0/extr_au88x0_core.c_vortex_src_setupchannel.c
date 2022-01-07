
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 scalar_t__ VORTEX_SRC_U0 ;
 scalar_t__ VORTEX_SRC_U1 ;
 scalar_t__ VORTEX_SRC_U2 ;
 int hwwrite (int ,scalar_t__,unsigned int) ;
 int vortex_src_cleardrift (TYPE_1__*,unsigned char) ;
 int vortex_src_flushbuffers (TYPE_1__*,unsigned char) ;
 int vortex_src_persist_convratio (TYPE_1__*,unsigned char,unsigned int) ;
 int vortex_src_set_throttlesource (TYPE_1__*,unsigned char,int) ;

__attribute__((used)) static void vortex_src_setupchannel(vortex_t * card, unsigned char src,
   unsigned int cr, unsigned int b, int sweep, int d,
   int dirplay, int sl, unsigned int tr, int thsource)
{







 int esi, ebp = 0, esp10;

 vortex_src_flushbuffers(card, src);

 if (sweep) {
  if ((tr & 0x10000) && (tr != 0x10000)) {
   tr = 0;
   esi = 0x7;
  } else {
   if ((((short)tr) < 0) && (tr != 0x8000)) {
    tr = 0;
    esi = 0x8;
   } else {
    tr = 1;
    esi = 0xc;
   }
  }
 } else {
  if ((cr & 0x10000) && (cr != 0x10000)) {
   tr = 0;
   esi = 0x11 - ((cr >> 0xe) & 7);
   if (cr & 0x3fff)
    esi -= 1;
   else
    esi -= 2;
  } else {
   tr = 1;
   esi = 0xc;
  }
 }
 vortex_src_cleardrift(card, src);
 vortex_src_set_throttlesource(card, src, thsource);

 if ((dirplay == 0) && (sweep == 0)) {
  if (tr)
   esp10 = 0xf;
  else
   esp10 = 0xc;
  ebp = 0;
 } else {
  if (tr)
   ebp = 0xf;
  else
   ebp = 0xc;
  esp10 = 0;
 }
 hwwrite(card->mmio, VORTEX_SRC_U0 + (src << 2),
  (sl << 0x9) | (sweep << 0x8) | ((esi & 0xf) << 4) | d);

 vortex_src_persist_convratio(card, src, cr);
 hwwrite(card->mmio, VORTEX_SRC_U1 + (src << 2), b & 0xffff);

 hwwrite(card->mmio, VORTEX_SRC_U2 + (src << 2),
  (tr << 0x11) | (dirplay << 0x10) | (ebp << 0x8) | esp10);


}
