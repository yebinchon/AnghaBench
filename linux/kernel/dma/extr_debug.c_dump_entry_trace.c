
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int stack_len; int stack_entries; } ;


 int pr_warning (char*) ;
 int stack_trace_print (int ,int ,int ) ;

__attribute__((used)) static inline void dump_entry_trace(struct dma_debug_entry *entry)
{






}
