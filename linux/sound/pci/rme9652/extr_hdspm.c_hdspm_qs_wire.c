
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_QS_DoubleWire ;
 int HDSPM_QS_QuadWire ;

__attribute__((used)) static int hdspm_qs_wire(struct hdspm * hdspm)
{
 if (hdspm->control_register & HDSPM_QS_DoubleWire)
  return 1;
 if (hdspm->control_register & HDSPM_QS_QuadWire)
  return 2;
 return 0;
}
