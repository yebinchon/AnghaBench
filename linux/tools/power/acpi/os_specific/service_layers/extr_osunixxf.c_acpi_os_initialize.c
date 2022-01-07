
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_gbl_output_file ;
 int acpi_gbl_print_lock ;
 int acpi_os_create_lock (int *) ;
 int os_enter_line_edit_mode () ;
 int stdout ;

acpi_status acpi_os_initialize(void)
{
 acpi_status status;

 acpi_gbl_output_file = stdout;

 os_enter_line_edit_mode();

 status = acpi_os_create_lock(&acpi_gbl_print_lock);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 return (AE_OK);
}
