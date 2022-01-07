
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct auxtrace_queues {int dummy; } ;
struct auxtrace_buffer {scalar_t__ size; int consecutive; int data_offset; } ;


 scalar_t__ BUFFER_LIMIT_FOR_32_BIT ;
 int ENOMEM ;
 int auxtrace_buffer__free (struct auxtrace_buffer*) ;
 int auxtrace_queues__queue_buffer (struct auxtrace_queues*,unsigned int,struct auxtrace_buffer*) ;
 struct auxtrace_buffer* memdup (struct auxtrace_buffer*,int) ;

__attribute__((used)) static int auxtrace_queues__split_buffer(struct auxtrace_queues *queues,
      unsigned int idx,
      struct auxtrace_buffer *buffer)
{
 u64 sz = buffer->size;
 bool consecutive = 0;
 struct auxtrace_buffer *b;
 int err;

 while (sz > BUFFER_LIMIT_FOR_32_BIT) {
  b = memdup(buffer, sizeof(struct auxtrace_buffer));
  if (!b)
   return -ENOMEM;
  b->size = BUFFER_LIMIT_FOR_32_BIT;
  b->consecutive = consecutive;
  err = auxtrace_queues__queue_buffer(queues, idx, b);
  if (err) {
   auxtrace_buffer__free(b);
   return err;
  }
  buffer->data_offset += BUFFER_LIMIT_FOR_32_BIT;
  sz -= BUFFER_LIMIT_FOR_32_BIT;
  consecutive = 1;
 }

 buffer->size = sz;
 buffer->consecutive = consecutive;

 return 0;
}
