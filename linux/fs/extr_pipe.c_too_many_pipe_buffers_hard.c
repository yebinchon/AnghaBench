
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long READ_ONCE (int ) ;
 int pipe_user_pages_hard ;

__attribute__((used)) static bool too_many_pipe_buffers_hard(unsigned long user_bufs)
{
 unsigned long hard_limit = READ_ONCE(pipe_user_pages_hard);

 return hard_limit && user_bufs > hard_limit;
}
