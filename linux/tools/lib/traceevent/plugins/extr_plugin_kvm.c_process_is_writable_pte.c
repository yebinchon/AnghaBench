
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 unsigned long PT_WRITABLE_MASK ;

__attribute__((used)) static unsigned long long
process_is_writable_pte(struct trace_seq *s, unsigned long long *args)
{
 unsigned long pte = args[0];
 return pte & PT_WRITABLE_MASK;
}
