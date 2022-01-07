
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_enable () ;

__attribute__((used)) static inline void radix_tree_preload_end(void)
{
 preempt_enable();
}
