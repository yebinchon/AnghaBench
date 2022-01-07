
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void print_help(void)
{
 printf ("Usage: dump_psb [options]\n");
 printf ("Options:\n");
 printf ("  -n, --numpst     Set number of PST tables to scan\n");
 printf ("  -r, --relevant   Only display PSTs relevant to cpuid N\n");
}
