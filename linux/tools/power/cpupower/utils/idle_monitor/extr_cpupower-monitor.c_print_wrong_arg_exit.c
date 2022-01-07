
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (char*) ;
 int exit (int ) ;
 int printf (char*) ;

__attribute__((used)) static void print_wrong_arg_exit(void)
{
 printf(_("invalid or unknown argument\n"));
 exit(EXIT_FAILURE);
}
