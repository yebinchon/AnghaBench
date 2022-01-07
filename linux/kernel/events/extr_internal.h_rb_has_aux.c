
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int aux_nr_pages; } ;



__attribute__((used)) static inline bool rb_has_aux(struct ring_buffer *rb)
{
 return !!rb->aux_nr_pages;
}
