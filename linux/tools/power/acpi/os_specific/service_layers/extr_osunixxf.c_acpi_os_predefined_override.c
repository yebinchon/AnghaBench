
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_predefined_names {int dummy; } ;
typedef int * acpi_string ;
typedef int acpi_status ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;

acpi_status
acpi_os_predefined_override(const struct acpi_predefined_names *init_val,
       acpi_string *new_val)
{

 if (!init_val || !new_val) {
  return (AE_BAD_PARAMETER);
 }

 *new_val = ((void*)0);
 return (AE_OK);
}
