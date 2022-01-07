
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {size_t sfc; struct amdtp_dot* protocol; } ;
struct amdtp_dot {unsigned int* midi_fifo_used; } ;


 unsigned int* amdtp_rate_table ;

__attribute__((used)) static inline void midi_use_bytes(struct amdtp_stream *s,
      unsigned int port, unsigned int count)
{
 struct amdtp_dot *p = s->protocol;

 p->midi_fifo_used[port] += amdtp_rate_table[s->sfc] * count;
}
