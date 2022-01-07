
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct snd_dma_buffer {TYPE_1__ dev; int bytes; int area; } ;
 int free_pages_exact (int ,int ) ;
 int pr_err (char*,int) ;
 int snd_free_dev_iram (struct snd_dma_buffer*) ;
 int snd_free_dev_pages (struct snd_dma_buffer*) ;
 int snd_free_sgbuf_pages (struct snd_dma_buffer*) ;

void snd_dma_free_pages(struct snd_dma_buffer *dmab)
{
 switch (dmab->dev.type) {
 case 133:
  free_pages_exact(dmab->area, dmab->bytes);
  break;
 default:
  pr_err("snd-malloc: invalid device type %d\n", dmab->dev.type);
 }
}
