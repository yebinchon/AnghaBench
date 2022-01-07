
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {int * rmidi; int * get_dev_id_port; int * get_dev_id_card; int * write; int * read; int * interrupt_disable; int * interrupt_enable; int * interrupt; } ;



__attribute__((used)) static void ca_midi_free(struct snd_ca_midi *midi)
{
 midi->interrupt = ((void*)0);
 midi->interrupt_enable = ((void*)0);
 midi->interrupt_disable = ((void*)0);
 midi->read = ((void*)0);
 midi->write = ((void*)0);
 midi->get_dev_id_card = ((void*)0);
 midi->get_dev_id_port = ((void*)0);
 midi->rmidi = ((void*)0);
}
