
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unreachable_data {int location; } ;


 int panic (char*) ;
 int pr_err (char*) ;
 int ubsan_epilogue (unsigned long*) ;
 int ubsan_prologue (int *,unsigned long*) ;

void __ubsan_handle_builtin_unreachable(struct unreachable_data *data)
{
 unsigned long flags;

 ubsan_prologue(&data->location, &flags);
 pr_err("calling __builtin_unreachable()\n");
 ubsan_epilogue(&flags);
 panic("can't return from __builtin_unreachable()");
}
