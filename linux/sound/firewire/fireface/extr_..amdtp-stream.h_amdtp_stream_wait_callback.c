
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int callbacked; int callback_wait; } ;


 int msecs_to_jiffies (unsigned int) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static inline bool amdtp_stream_wait_callback(struct amdtp_stream *s,
           unsigned int timeout)
{
 return wait_event_timeout(s->callback_wait,
      s->callbacked == 1,
      msecs_to_jiffies(timeout)) > 0;
}
