
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int device; struct snd_card* card; } ;
struct snd_card {size_t number; } ;
struct seq_midisynth_client {int* ports_per_device; scalar_t__ num_ports; int seq_client; struct seq_midisynth_client** ports; } ;
struct seq_midisynth {int* ports_per_device; scalar_t__ num_ports; int seq_client; struct seq_midisynth** ports; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int kfree (struct seq_midisynth_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 int snd_seq_delete_kernel_client (int ) ;
 int snd_seq_midisynth_delete (struct seq_midisynth_client*) ;
 struct seq_midisynth_client** synths ;
 struct snd_seq_device* to_seq_dev (struct device*) ;

__attribute__((used)) static int
snd_seq_midisynth_remove(struct device *_dev)
{
 struct snd_seq_device *dev = to_seq_dev(_dev);
 struct seq_midisynth_client *client;
 struct seq_midisynth *msynth;
 struct snd_card *card = dev->card;
 int device = dev->device, p, ports;

 mutex_lock(&register_mutex);
 client = synths[card->number];
 if (client == ((void*)0) || client->ports[device] == ((void*)0)) {
  mutex_unlock(&register_mutex);
  return -ENODEV;
 }
 ports = client->ports_per_device[device];
 client->ports_per_device[device] = 0;
 msynth = client->ports[device];
 client->ports[device] = ((void*)0);
 for (p = 0; p < ports; p++)
  snd_seq_midisynth_delete(&msynth[p]);
 kfree(msynth);
 client->num_ports--;
 if (client->num_ports <= 0) {
  snd_seq_delete_kernel_client(client->seq_client);
  synths[card->number] = ((void*)0);
  kfree(client);
 }
 mutex_unlock(&register_mutex);
 return 0;
}
