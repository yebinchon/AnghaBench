
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SJ_FAIL ;
 int cleanup () ;
 int jmpenv ;
 int longjmp (int ,int ) ;

__attribute__((used)) static void __attribute__((noreturn))
fail_file(void)
{
 cleanup();
 longjmp(jmpenv, SJ_FAIL);
}
