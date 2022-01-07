
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nm256 {scalar_t__ irq; struct nm256* ac97_regs; int pci; int res_buffer; int res_cport; int buffer; int cport; TYPE_1__* streams; } ;
struct TYPE_2__ {scalar_t__ running; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int free_irq (scalar_t__,struct nm256*) ;
 int iounmap (int ) ;
 int kfree (struct nm256*) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (int ) ;
 int snd_nm256_capture_stop (struct nm256*) ;
 int snd_nm256_playback_stop (struct nm256*) ;

__attribute__((used)) static int snd_nm256_free(struct nm256 *chip)
{
 if (chip->streams[SNDRV_PCM_STREAM_PLAYBACK].running)
  snd_nm256_playback_stop(chip);
 if (chip->streams[SNDRV_PCM_STREAM_CAPTURE].running)
  snd_nm256_capture_stop(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 iounmap(chip->cport);
 iounmap(chip->buffer);
 release_and_free_resource(chip->res_cport);
 release_and_free_resource(chip->res_buffer);

 pci_disable_device(chip->pci);
 kfree(chip->ac97_regs);
 kfree(chip);
 return 0;
}
