
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_OPTION_ERROR (char*,int ) ;
 char* acpi_gbl_optarg ;
 size_t acpi_gbl_optind ;
 int current_char_ptr ;

int acpi_getopt_argument(int argc, char **argv)
{

 acpi_gbl_optind--;
 current_char_ptr++;

 if (argv[acpi_gbl_optind][(int)(current_char_ptr + 1)] != '\0') {
  acpi_gbl_optarg =
      &argv[acpi_gbl_optind++][(int)(current_char_ptr + 1)];
 } else if (++acpi_gbl_optind >= argc) {
  ACPI_OPTION_ERROR("\nOption requires an argument", 0);

  current_char_ptr = 1;
  return (-1);
 } else {
  acpi_gbl_optarg = argv[acpi_gbl_optind++];
 }

 current_char_ptr = 1;
 return (0);
}
