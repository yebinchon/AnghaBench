
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ordered_events {int copy_on_queue; } ;



__attribute__((used)) static inline
void ordered_events__set_copy_on_queue(struct ordered_events *oe, bool copy)
{
 oe->copy_on_queue = copy;
}
