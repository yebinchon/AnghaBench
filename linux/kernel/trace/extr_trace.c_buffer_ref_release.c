
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_ref {int page; int cpu; int buffer; int refcount; } ;


 int kfree (struct buffer_ref*) ;
 int refcount_dec_and_test (int *) ;
 int ring_buffer_free_read_page (int ,int ,int ) ;

__attribute__((used)) static void buffer_ref_release(struct buffer_ref *ref)
{
 if (!refcount_dec_and_test(&ref->refcount))
  return;
 ring_buffer_free_read_page(ref->buffer, ref->cpu, ref->page);
 kfree(ref);
}
