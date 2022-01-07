
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int sync_endpoint; int data_endpoint; int altset_idx; int interface; scalar_t__ running; } ;
struct snd_info_buffer {int dummy; } ;


 int proc_dump_ep_status (struct snd_usb_substream*,int ,int ,struct snd_info_buffer*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void proc_dump_substream_status(struct snd_usb_substream *subs, struct snd_info_buffer *buffer)
{
 if (subs->running) {
  snd_iprintf(buffer, "  Status: Running\n");
  snd_iprintf(buffer, "    Interface = %d\n", subs->interface);
  snd_iprintf(buffer, "    Altset = %d\n", subs->altset_idx);
  proc_dump_ep_status(subs, subs->data_endpoint, subs->sync_endpoint, buffer);
 } else {
  snd_iprintf(buffer, "  Status: Stop\n");
 }
}
