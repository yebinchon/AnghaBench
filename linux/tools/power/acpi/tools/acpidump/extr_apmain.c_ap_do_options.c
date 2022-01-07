
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 char* ACPI_COMMON_BUILD_TIME ;
 char* ACPI_COMMON_SIGNON (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_OPT_END ;
 int AP_DUMP_ALL_TABLES ;
 int AP_DUMP_TABLE_BY_ADDRESS ;
 int AP_DUMP_TABLE_BY_FILE ;
 int AP_DUMP_TABLE_BY_NAME ;
 int AP_SUPPORTED_OPTIONS ;
 int AP_UTILITY_NAME ;
 void* FALSE ;
 void* TRUE ;
 void* acpi_gbl_do_not_use_xsdt ;
 char* acpi_gbl_optarg ;
 int acpi_getopt (int,char**,int ) ;
 int acpi_ut_strtoul64 (char*,int *) ;
 int ap_display_usage () ;
 scalar_t__ ap_insert_action (char*,int ) ;
 int ap_open_output_file (char*) ;
 scalar_t__ current_action ;
 int fprintf (int ,char*,...) ;
 void* gbl_binary_mode ;
 void* gbl_do_not_dump_xsdt ;
 void* gbl_dump_customized_tables ;
 int gbl_rsdp_base ;
 void* gbl_summary_mode ;
 void* gbl_verbose_mode ;
 int printf (char*,...) ;
 int stderr ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int ap_do_options(int argc, char **argv)
{
 int j;
 acpi_status status;



 while ((j =
  acpi_getopt(argc, argv, AP_SUPPORTED_OPTIONS)) != ACPI_OPT_END)
  switch (j) {



  case 'b':

   gbl_binary_mode = TRUE;
   continue;

  case 'c':

   if (!strcmp(acpi_gbl_optarg, "on")) {
    gbl_dump_customized_tables = TRUE;
   } else if (!strcmp(acpi_gbl_optarg, "off")) {
    gbl_dump_customized_tables = FALSE;
   } else {
    fprintf(stderr,
     "%s: Cannot handle this switch, please use on|off\n",
     acpi_gbl_optarg);
    return (-1);
   }
   continue;

  case 'h':
  case '?':

   ap_display_usage();
   return (1);

  case 'o':

   if (ap_open_output_file(acpi_gbl_optarg)) {
    return (-1);
   }
   continue;

  case 'r':

   status =
       acpi_ut_strtoul64(acpi_gbl_optarg, &gbl_rsdp_base);
   if (ACPI_FAILURE(status)) {
    fprintf(stderr,
     "%s: Could not convert to a physical address\n",
     acpi_gbl_optarg);
    return (-1);
   }
   continue;

  case 's':

   gbl_summary_mode = TRUE;
   continue;

  case 'x':

   if (!acpi_gbl_do_not_use_xsdt) {
    acpi_gbl_do_not_use_xsdt = TRUE;
   } else {
    gbl_do_not_dump_xsdt = TRUE;
   }
   continue;

  case 'v':

   switch (acpi_gbl_optarg[0]) {
   case '^':

    fprintf(stderr,
     ACPI_COMMON_SIGNON(AP_UTILITY_NAME));
    return (1);

   case 'd':

    fprintf(stderr,
     ACPI_COMMON_SIGNON(AP_UTILITY_NAME));
    printf(ACPI_COMMON_BUILD_TIME);
    return (1);

   default:

    printf("Unknown option: -v%s\n",
           acpi_gbl_optarg);
    return (-1);
   }
   break;

  case 'z':

   gbl_verbose_mode = TRUE;
   fprintf(stderr, ACPI_COMMON_SIGNON(AP_UTILITY_NAME));
   continue;




  case 'a':

   if (ap_insert_action
       (acpi_gbl_optarg, AP_DUMP_TABLE_BY_ADDRESS)) {
    return (-1);
   }
   break;

  case 'f':

   if (ap_insert_action
       (acpi_gbl_optarg, AP_DUMP_TABLE_BY_FILE)) {
    return (-1);
   }
   break;

  case 'n':

   if (ap_insert_action
       (acpi_gbl_optarg, AP_DUMP_TABLE_BY_NAME)) {
    return (-1);
   }
   break;

  default:

   ap_display_usage();
   return (-1);
  }



 if (current_action == 0) {
  if (ap_insert_action(((void*)0), AP_DUMP_ALL_TABLES)) {
   return (-1);
  }
 }

 return (0);
}
