
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int AE_OK ;
 int os_exit_line_edit_mode () ;

acpi_status acpi_os_terminate(void)
{

 os_exit_line_edit_mode();
 return (AE_OK);
}
