
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct snd_seq_event {TYPE_2__ data; } ;



__attribute__((used)) static void pitchbend_decode(struct snd_seq_event *ev, unsigned char *buf)
{
 int value = ev->data.control.value + 8192;
 buf[0] = value & 0x7f;
 buf[1] = (value >> 7) & 0x7f;
}
