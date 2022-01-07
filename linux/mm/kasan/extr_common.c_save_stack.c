
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;
typedef int depot_stack_handle_t ;


 int ARRAY_SIZE (unsigned long*) ;
 int KASAN_STACK_DEPTH ;
 unsigned int filter_irq_stacks (unsigned long*,unsigned int) ;
 int stack_depot_save (unsigned long*,unsigned int,int ) ;
 unsigned int stack_trace_save (unsigned long*,int ,int ) ;

__attribute__((used)) static inline depot_stack_handle_t save_stack(gfp_t flags)
{
 unsigned long entries[KASAN_STACK_DEPTH];
 unsigned int nr_entries;

 nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 0);
 nr_entries = filter_irq_stacks(entries, nr_entries);
 return stack_depot_save(entries, nr_entries, flags);
}
