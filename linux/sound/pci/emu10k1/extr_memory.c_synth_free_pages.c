
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {int memhdr; } ;


 int __synth_free_pages (struct snd_emu10k1*,int,int) ;
 int get_single_page_range (int ,struct snd_emu10k1_memblk*,int*,int*) ;

__attribute__((used)) static int synth_free_pages(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
 int first_page, last_page;

 get_single_page_range(emu->memhdr, blk, &first_page, &last_page);
 __synth_free_pages(emu, first_page, last_page);
 return 0;
}
