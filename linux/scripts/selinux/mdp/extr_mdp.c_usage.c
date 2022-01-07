
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void usage(char *name)
{
 printf("usage: %s [-m] policy_file context_file\n", name);
 exit(1);
}
