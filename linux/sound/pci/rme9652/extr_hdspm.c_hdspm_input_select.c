
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int control_register; } ;


 int HDSPM_InputSelect0 ;

__attribute__((used)) static int hdspm_input_select(struct hdspm * hdspm)
{
 return (hdspm->control_register & HDSPM_InputSelect0) ? 1 : 0;
}
