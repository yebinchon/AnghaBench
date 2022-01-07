
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {int type; } ;


 int INTEL_PT_PSBEND ;

__attribute__((used)) static int intel_pt_get_psbend(struct intel_pt_pkt *packet)
{
 packet->type = INTEL_PT_PSBEND;
 return 2;
}
