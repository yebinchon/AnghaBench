
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {size_t sfc; struct amdtp_am824* protocol; } ;
struct amdtp_am824 {int * midi_fifo_used; } ;


 scalar_t__* amdtp_rate_table ;

__attribute__((used)) static void midi_rate_use_one_byte(struct amdtp_stream *s, unsigned int port)
{
 struct amdtp_am824 *p = s->protocol;

 p->midi_fifo_used[port] += amdtp_rate_table[s->sfc];
}
