
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {scalar_t__ packet_index; } ;



__attribute__((used)) static inline bool amdtp_streaming_error(struct amdtp_stream *s)
{
 return s->packet_index < 0;
}
