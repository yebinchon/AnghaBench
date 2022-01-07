
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int atihdmi_paired_swap_fc_lfe(int pos)
{





 switch (pos) {

  case 2: return 3;
  case 3: return 2;
  default: break;
 }

 return pos;
}
