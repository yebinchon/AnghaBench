
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int context; } ;


 int IS_ERR (int ) ;

__attribute__((used)) static inline bool amdtp_stream_running(struct amdtp_stream *s)
{
 return !IS_ERR(s->context);
}
