
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_aml_batch_drain ;
 int acpi_aml_loop (int) ;
 scalar_t__ acpi_aml_readable (int) ;

__attribute__((used)) static void acpi_aml_flush(int fd)
{
 while (acpi_aml_readable(fd)) {
  acpi_aml_batch_drain = 1;
  acpi_aml_loop(fd);
  acpi_aml_batch_drain = 0;
 }
}
