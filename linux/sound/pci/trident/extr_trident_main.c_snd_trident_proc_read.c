
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* memhdr; scalar_t__ entries; } ;
struct snd_trident {int device; char* spurious_irq_count; char* spurious_irq_max_delta; int spdif_ctrl; int ac97_ctrl; TYPE_1__ tlb; } ;
struct snd_info_entry {struct snd_trident* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_4__ {char* size; char* used; } ;





 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 char* snd_util_mem_avail (TYPE_2__*) ;

__attribute__((used)) static void snd_trident_proc_read(struct snd_info_entry *entry,
      struct snd_info_buffer *buffer)
{
 struct snd_trident *trident = entry->private_data;
 char *s;

 switch (trident->device) {
 case 128:
  s = "SiS 7018 Audio";
  break;
 case 130:
  s = "Trident 4DWave PCI DX";
  break;
 case 129:
  s = "Trident 4DWave PCI NX";
  break;
 default:
  s = "???";
 }
 snd_iprintf(buffer, "%s\n\n", s);
 snd_iprintf(buffer, "Spurious IRQs    : %d\n", trident->spurious_irq_count);
 snd_iprintf(buffer, "Spurious IRQ dlta: %d\n", trident->spurious_irq_max_delta);
 if (trident->device == 129 || trident->device == 128)
  snd_iprintf(buffer, "IEC958 Mixer Out : %s\n", trident->spdif_ctrl == 0x28 ? "on" : "off");
 if (trident->device == 129) {
  snd_iprintf(buffer, "Rear Speakers    : %s\n", trident->ac97_ctrl & 0x00000010 ? "on" : "off");
  if (trident->tlb.entries) {
   snd_iprintf(buffer,"\nVirtual Memory\n");
   snd_iprintf(buffer, "Memory Maximum : %d\n", trident->tlb.memhdr->size);
   snd_iprintf(buffer, "Memory Used    : %d\n", trident->tlb.memhdr->used);
   snd_iprintf(buffer, "Memory Free    : %d\n", snd_util_mem_avail(trident->tlb.memhdr));
  }
 }
}
