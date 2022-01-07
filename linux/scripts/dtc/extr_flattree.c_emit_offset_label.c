
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,...) ;

__attribute__((used)) static void emit_offset_label(FILE *f, const char *label, int offset)
{
 fprintf(f, "\t.globl\t%s\n", label);
 fprintf(f, "%s\t= . + %d\n", label, offset);
}
