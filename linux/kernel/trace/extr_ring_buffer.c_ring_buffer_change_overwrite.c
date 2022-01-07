
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int mutex; int flags; } ;


 int RB_FL_OVERWRITE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ring_buffer_change_overwrite(struct ring_buffer *buffer, int val)
{
 mutex_lock(&buffer->mutex);
 if (val)
  buffer->flags |= RB_FL_OVERWRITE;
 else
  buffer->flags &= ~RB_FL_OVERWRITE;
 mutex_unlock(&buffer->mutex);
}
