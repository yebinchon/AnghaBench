
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdtp_stream {struct amdtp_dot* protocol; } ;
struct TYPE_2__ {int carry; int idx; scalar_t__ off; } ;
struct amdtp_dot {TYPE_1__ state; } ;



void amdtp_dot_reset(struct amdtp_stream *s)
{
 struct amdtp_dot *p = s->protocol;

 p->state.carry = 0x00;
 p->state.idx = 0x00;
 p->state.off = 0;
}
