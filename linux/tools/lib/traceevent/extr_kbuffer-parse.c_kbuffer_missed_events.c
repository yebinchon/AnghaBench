
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int lost_events; scalar_t__ curr; } ;



int kbuffer_missed_events(struct kbuffer *kbuf)
{

 if (kbuf->curr)
  return 0;

 return kbuf->lost_events;
}
