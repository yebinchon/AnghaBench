
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int mutex; scalar_t__ pos; int tr; } ;
struct file {int f_flags; struct trace_iterator* private_data; } ;


 int EAGAIN ;
 int O_NONBLOCK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ trace_empty (struct trace_iterator*) ;
 int tracer_tracing_is_on (int ) ;
 int wait_on_pipe (struct trace_iterator*,int ) ;

__attribute__((used)) static int tracing_wait_pipe(struct file *filp)
{
 struct trace_iterator *iter = filp->private_data;
 int ret;

 while (trace_empty(iter)) {

  if ((filp->f_flags & O_NONBLOCK)) {
   return -EAGAIN;
  }
  if (!tracer_tracing_is_on(iter->tr) && iter->pos)
   break;

  mutex_unlock(&iter->mutex);

  ret = wait_on_pipe(iter, 0);

  mutex_lock(&iter->mutex);

  if (ret)
   return ret;
 }

 return 1;
}
