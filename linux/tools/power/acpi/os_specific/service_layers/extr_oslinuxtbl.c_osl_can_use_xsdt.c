
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FALSE ;
 int TRUE ;
 int acpi_gbl_do_not_use_xsdt ;
 scalar_t__ gbl_revision ;

__attribute__((used)) static u8 osl_can_use_xsdt(void)
{
 if (gbl_revision && !acpi_gbl_do_not_use_xsdt) {
  return (TRUE);
 } else {
  return (FALSE);
 }
}
