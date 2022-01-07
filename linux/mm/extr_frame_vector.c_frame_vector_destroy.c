
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_vector {scalar_t__ nr_frames; } ;


 int VM_BUG_ON (int) ;
 int kvfree (struct frame_vector*) ;

void frame_vector_destroy(struct frame_vector *vec)
{

 VM_BUG_ON(vec->nr_frames > 0);
 kvfree(vec);
}
