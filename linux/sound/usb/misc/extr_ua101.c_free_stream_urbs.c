
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101_stream {unsigned int queue_length; int ** urbs; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_stream_urbs(struct ua101_stream *stream)
{
 unsigned int i;

 for (i = 0; i < stream->queue_length; ++i) {
  kfree(stream->urbs[i]);
  stream->urbs[i] = ((void*)0);
 }
}
