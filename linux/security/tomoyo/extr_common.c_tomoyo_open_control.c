
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_io_buffer {int type; int readbuf_size; int writebuf_size; struct tomoyo_io_buffer* read_buf; void* write_buf; int * write; int * poll; int * read; int io_sem; } ;
struct file {int f_mode; struct tomoyo_io_buffer* private_data; } ;


 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_NOFS ;
 int atomic_inc (int *) ;
 int kfree (struct tomoyo_io_buffer*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int tomoyo_notify_gc (struct tomoyo_io_buffer*,int) ;
 int * tomoyo_poll_log ;
 int * tomoyo_poll_query ;
 int tomoyo_query_observers ;
 int * tomoyo_read_domain ;
 int * tomoyo_read_exception ;
 int * tomoyo_read_log ;
 int * tomoyo_read_manager ;
 int * tomoyo_read_pid ;
 int * tomoyo_read_profile ;
 int * tomoyo_read_query ;
 int * tomoyo_read_stat ;
 int * tomoyo_read_version ;
 int * tomoyo_write_answer ;
 int * tomoyo_write_domain ;
 int * tomoyo_write_exception ;
 int * tomoyo_write_manager ;
 int * tomoyo_write_pid ;
 int * tomoyo_write_profile ;
 int * tomoyo_write_stat ;

int tomoyo_open_control(const u8 type, struct file *file)
{
 struct tomoyo_io_buffer *head = kzalloc(sizeof(*head), GFP_NOFS);

 if (!head)
  return -ENOMEM;
 mutex_init(&head->io_sem);
 head->type = type;
 switch (type) {
 case 135:

  head->write = tomoyo_write_domain;
  head->read = tomoyo_read_domain;
  break;
 case 134:

  head->write = tomoyo_write_exception;
  head->read = tomoyo_read_exception;
  break;
 case 136:

  head->poll = tomoyo_poll_log;
  head->read = tomoyo_read_log;
  break;
 case 132:

  head->write = tomoyo_write_pid;
  head->read = tomoyo_read_pid;
  break;
 case 128:

  head->read = tomoyo_read_version;
  head->readbuf_size = 128;
  break;
 case 129:

  head->write = tomoyo_write_stat;
  head->read = tomoyo_read_stat;
  head->readbuf_size = 1024;
  break;
 case 131:

  head->write = tomoyo_write_profile;
  head->read = tomoyo_read_profile;
  break;
 case 130:
  head->poll = tomoyo_poll_query;
  head->write = tomoyo_write_answer;
  head->read = tomoyo_read_query;
  break;
 case 133:

  head->write = tomoyo_write_manager;
  head->read = tomoyo_read_manager;
  break;
 }
 if (!(file->f_mode & FMODE_READ)) {




  head->read = ((void*)0);
  head->poll = ((void*)0);
 } else if (!head->poll) {

  if (!head->readbuf_size)
   head->readbuf_size = 4096 * 2;
  head->read_buf = kzalloc(head->readbuf_size, GFP_NOFS);
  if (!head->read_buf) {
   kfree(head);
   return -ENOMEM;
  }
 }
 if (!(file->f_mode & FMODE_WRITE)) {




  head->write = ((void*)0);
 } else if (head->write) {
  head->writebuf_size = 4096 * 2;
  head->write_buf = kzalloc(head->writebuf_size, GFP_NOFS);
  if (!head->write_buf) {
   kfree(head->read_buf);
   kfree(head);
   return -ENOMEM;
  }
 }






 if (type == 130)
  atomic_inc(&tomoyo_query_observers);
 file->private_data = head;
 tomoyo_notify_gc(head, 1);
 return 0;
}
