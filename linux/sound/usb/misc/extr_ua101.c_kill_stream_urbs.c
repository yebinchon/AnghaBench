
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ua101_stream {unsigned int queue_length; TYPE_1__** urbs; } ;
struct TYPE_2__ {int urb; } ;


 int usb_kill_urb (int *) ;

__attribute__((used)) static void kill_stream_urbs(struct ua101_stream *stream)
{
 unsigned int i;

 for (i = 0; i < stream->queue_length; ++i)
  if (stream->urbs[i])
   usb_kill_urb(&stream->urbs[i]->urb);
}
