
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

void print_usage(int argc, char *argv[])
{
 printf("Usage: %s [-h <help>] [-i <heap id>] [-s <size in bytes>]\n",
  argv[0]);
}
