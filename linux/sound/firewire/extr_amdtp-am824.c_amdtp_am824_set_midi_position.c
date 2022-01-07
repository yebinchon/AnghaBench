
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {struct amdtp_am824* protocol; } ;
struct amdtp_am824 {unsigned int midi_position; } ;



void amdtp_am824_set_midi_position(struct amdtp_stream *s,
       unsigned int position)
{
 struct amdtp_am824 *p = s->protocol;

 p->midi_position = position;
}
