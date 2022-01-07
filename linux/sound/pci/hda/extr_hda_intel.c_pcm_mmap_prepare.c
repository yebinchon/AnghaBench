
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; } ;
struct snd_pcm_substream {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx {scalar_t__ uc_buffer; } ;


 int pgprot_writecombine (int ) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static void pcm_mmap_prepare(struct snd_pcm_substream *substream,
        struct vm_area_struct *area)
{






}
