
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int did; } ;
struct TYPE_3__ {int did; } ;
union msr_pstate {int val; TYPE_2__ bits; TYPE_1__ fam17h_bits; } ;



__attribute__((used)) static int get_did(int family, union msr_pstate pstate)
{
 int t;

 if (family == 0x12)
  t = pstate.val & 0xf;
 else if (family == 0x17 || family == 0x18)
  t = pstate.fam17h_bits.did;
 else
  t = pstate.bits.did;

 return t;
}
