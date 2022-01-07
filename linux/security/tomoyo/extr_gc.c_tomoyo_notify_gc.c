
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int users; struct tomoyo_io_buffer* write_buf; struct tomoyo_io_buffer* read_buf; int list; } ;


 int kfree (struct tomoyo_io_buffer*) ;
 int kthread_run (int ,int *,char*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tomoyo_gc_thread ;
 int tomoyo_io_buffer_list ;
 int tomoyo_io_buffer_list_lock ;

void tomoyo_notify_gc(struct tomoyo_io_buffer *head, const bool is_register)
{
 bool is_write = 0;

 spin_lock(&tomoyo_io_buffer_list_lock);
 if (is_register) {
  head->users = 1;
  list_add(&head->list, &tomoyo_io_buffer_list);
 } else {
  is_write = head->write_buf != ((void*)0);
  if (!--head->users) {
   list_del(&head->list);
   kfree(head->read_buf);
   kfree(head->write_buf);
   kfree(head);
  }
 }
 spin_unlock(&tomoyo_io_buffer_list_lock);
 if (is_write)
  kthread_run(tomoyo_gc_thread, ((void*)0), "GC for TOMOYO");
}
