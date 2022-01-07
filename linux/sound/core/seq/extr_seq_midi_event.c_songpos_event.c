
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct snd_seq_event {TYPE_2__ data; } ;
struct snd_midi_event {scalar_t__* buf; } ;



__attribute__((used)) static void songpos_event(struct snd_midi_event *dev, struct snd_seq_event *ev)
{
 ev->data.control.value = (int)dev->buf[2] * 128 + (int)dev->buf[1];
}
