
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_stream_kernel {int out_phase_peeked; int out_phase; int freqn; struct usb_stream* s; } ;
struct TYPE_2__ {int frame_size; } ;
struct usb_stream {TYPE_1__ cfg; } ;



__attribute__((used)) static unsigned usb_stream_next_packet_size(struct usb_stream_kernel *sk)
{
 struct usb_stream *s = sk->s;
 sk->out_phase_peeked = (sk->out_phase & 0xffff) + sk->freqn;
 return (sk->out_phase_peeked >> 16) * s->cfg.frame_size;
}
