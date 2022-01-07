
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int syt_interval; struct amdtp_am824* protocol; } ;
struct amdtp_am824 {int* midi_fifo_used; int midi_fifo_limit; } ;


 int MIDI_BYTES_PER_SECOND ;
 int max (int,int ) ;

__attribute__((used)) static bool midi_ratelimit_per_packet(struct amdtp_stream *s, unsigned int port)
{
 struct amdtp_am824 *p = s->protocol;
 int used;

 used = p->midi_fifo_used[port];
 if (used == 0)
  return 1;

 used -= MIDI_BYTES_PER_SECOND * s->syt_interval;
 used = max(used, 0);
 p->midi_fifo_used[port] = used;

 return used < p->midi_fifo_limit;
}
