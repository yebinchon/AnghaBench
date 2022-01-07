
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;

void usage(FILE *file, char *progname)
{
 fprintf(file, "usage: %s [-b cmd] [-f file] [-h]\n", progname);
 fprintf(file, "\nOptions:\n");
 fprintf(file, "  -b     Specify command to be executed in batch mode\n");
 fprintf(file, "  -f     Specify interface file other than");
 fprintf(file, "         /sys/kernel/debug/acpi/acpidbg\n");
 fprintf(file, "  -h     Print this help message\n");
}
