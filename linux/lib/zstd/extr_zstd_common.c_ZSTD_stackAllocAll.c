
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; scalar_t__ end; } ;
typedef TYPE_1__ ZSTD_stack ;
typedef int const BYTE ;


 scalar_t__ ZSTD_PTR_ALIGN (int ) ;
 void* stack_push (TYPE_1__*,size_t) ;

void *ZSTD_stackAllocAll(void *opaque, size_t *size)
{
 ZSTD_stack *stack = (ZSTD_stack *)opaque;
 *size = (BYTE const *)stack->end - (BYTE *)ZSTD_PTR_ALIGN(stack->ptr);
 return stack_push(stack, *size);
}
