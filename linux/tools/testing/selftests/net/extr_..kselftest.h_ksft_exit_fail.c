
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int exit (int ) ;
 int ksft_print_cnts () ;
 int printf (char*) ;

__attribute__((used)) static inline int ksft_exit_fail(void)
{
 printf("Bail out!\n");
 ksft_print_cnts();
 exit(KSFT_FAIL);
}
