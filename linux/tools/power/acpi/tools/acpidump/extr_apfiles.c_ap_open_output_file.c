
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_FILE ;


 scalar_t__ ap_is_existing_file (char*) ;
 scalar_t__ fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ gbl_output_file ;
 char* gbl_output_filename ;
 int stderr ;

int ap_open_output_file(char *pathname)
{
 ACPI_FILE file;



 if (ap_is_existing_file(pathname) != 0) {
  return (-1);
 }



 file = fopen(pathname, "w");
 if (!file) {
  fprintf(stderr, "Could not open output file: %s\n", pathname);
  return (-1);
 }



 gbl_output_file = file;
 gbl_output_filename = pathname;
 return (0);
}
