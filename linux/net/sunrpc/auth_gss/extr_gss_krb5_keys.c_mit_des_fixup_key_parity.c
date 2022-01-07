
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int parity_char (int) ;

__attribute__((used)) static void mit_des_fixup_key_parity(u8 key[8])
{
 int i;
 for (i = 0; i < 8; i++) {
  key[i] &= 0xfe;
  key[i] |= 1^parity_char(key[i]);
 }
}
