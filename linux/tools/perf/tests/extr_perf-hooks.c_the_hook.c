
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSEGV ;
 int raise (int ) ;

__attribute__((used)) static void the_hook(void *_hook_flags)
{
 int *hook_flags = _hook_flags;

 *hook_flags = 1234;


 raise(SIGSEGV);
}
