
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int note; int velocity; } ;
struct TYPE_4__ {TYPE_1__ note; } ;
struct snd_seq_event {TYPE_2__ data; } ;



__attribute__((used)) static void note_decode(struct snd_seq_event *ev, unsigned char *buf)
{
 buf[0] = ev->data.note.note & 0x7f;
 buf[1] = ev->data.note.velocity & 0x7f;
}
