
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int aux_refcount; } ;


 int __rb_free_aux (struct ring_buffer*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void rb_free_aux(struct ring_buffer *rb)
{
 if (refcount_dec_and_test(&rb->aux_refcount))
  __rb_free_aux(rb);
}
