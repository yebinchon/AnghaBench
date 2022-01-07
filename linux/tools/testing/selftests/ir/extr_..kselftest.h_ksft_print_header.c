
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getenv (char*) ;
 int printf (char*) ;

__attribute__((used)) static inline void ksft_print_header(void)
{
 if (!(getenv("KSFT_TAP_LEVEL")))
  printf("TAP version 13\n");
}
