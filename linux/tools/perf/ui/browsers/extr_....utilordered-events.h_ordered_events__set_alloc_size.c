
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ordered_events {int max_alloc_size; } ;



__attribute__((used)) static inline
void ordered_events__set_alloc_size(struct ordered_events *oe, u64 size)
{
 oe->max_alloc_size = size;
}
