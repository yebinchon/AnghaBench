
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void output_label(char *label)
{
 printf(".globl %s\n", label);
 printf("\tALGN\n");
 printf("%s:\n", label);
}
