
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int aux_nr_pages; int aux_pages; int * aux_priv; int (* free_aux ) (int *) ;} ;


 int WARN_ON_ONCE (int ) ;
 int in_atomic () ;
 int kfree (int ) ;
 int rb_free_aux_page (struct ring_buffer*,int) ;
 int stub1 (int *) ;

__attribute__((used)) static void __rb_free_aux(struct ring_buffer *rb)
{
 int pg;







 WARN_ON_ONCE(in_atomic());

 if (rb->aux_priv) {
  rb->free_aux(rb->aux_priv);
  rb->free_aux = ((void*)0);
  rb->aux_priv = ((void*)0);
 }

 if (rb->aux_nr_pages) {
  for (pg = 0; pg < rb->aux_nr_pages; pg++)
   rb_free_aux_page(rb, pg);

  kfree(rb->aux_pages);
  rb->aux_nr_pages = 0;
 }
}
