
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbmidi_out_port {int active; TYPE_3__* ep; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_6__ {int tasklet; TYPE_2__* umidi; } ;
struct TYPE_5__ {scalar_t__ disconnected; } ;
struct TYPE_4__ {scalar_t__ private_data; } ;


 int snd_rawmidi_proceed (struct snd_rawmidi_substream*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void snd_usbmidi_output_trigger(struct snd_rawmidi_substream *substream,
           int up)
{
 struct usbmidi_out_port *port =
  (struct usbmidi_out_port *)substream->runtime->private_data;

 port->active = up;
 if (up) {
  if (port->ep->umidi->disconnected) {


   snd_rawmidi_proceed(substream);
   return;
  }
  tasklet_schedule(&port->ep->tasklet);
 }
}
