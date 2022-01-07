
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int io_type; int card; } ;







 int snd_card_ro_proc_new (int ,char*,struct hdspm*,void (*) (struct snd_info_entry*,struct snd_info_buffer*)) ;
 void snd_hdspm_proc_ports_in (struct snd_info_entry*,struct snd_info_buffer*) ;
 void snd_hdspm_proc_ports_out (struct snd_info_entry*,struct snd_info_buffer*) ;
 void snd_hdspm_proc_read_aes32 (struct snd_info_entry*,struct snd_info_buffer*) ;
 void snd_hdspm_proc_read_debug (struct snd_info_entry*,struct snd_info_buffer*) ;
 void snd_hdspm_proc_read_madi (struct snd_info_entry*,struct snd_info_buffer*) ;
 void snd_hdspm_proc_read_raydat (struct snd_info_entry*,struct snd_info_buffer*) ;

__attribute__((used)) static void snd_hdspm_proc_init(struct hdspm *hdspm)
{
 void (*read)(struct snd_info_entry *, struct snd_info_buffer *) = ((void*)0);

 switch (hdspm->io_type) {
 case 132:
  read = snd_hdspm_proc_read_aes32;
  break;
 case 130:
  read = snd_hdspm_proc_read_madi;
  break;
 case 129:

  break;
 case 128:
  read = snd_hdspm_proc_read_raydat;
  break;
 case 131:
  break;
 }

 snd_card_ro_proc_new(hdspm->card, "hdspm", hdspm, read);
 snd_card_ro_proc_new(hdspm->card, "ports.in", hdspm,
        snd_hdspm_proc_ports_in);
 snd_card_ro_proc_new(hdspm->card, "ports.out", hdspm,
        snd_hdspm_proc_ports_out);






}
