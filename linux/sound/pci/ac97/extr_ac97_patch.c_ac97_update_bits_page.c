
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int page_mutex; } ;


 unsigned short AC97_INT_PAGING ;
 unsigned short AC97_PAGE_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short snd_ac97_read (struct snd_ac97*,unsigned short) ;
 int snd_ac97_update_bits (struct snd_ac97*,unsigned short,unsigned short,unsigned short) ;

__attribute__((used)) static int ac97_update_bits_page(struct snd_ac97 *ac97, unsigned short reg, unsigned short mask, unsigned short value, unsigned short page)
{
 unsigned short page_save;
 int ret;

 mutex_lock(&ac97->page_mutex);
 page_save = snd_ac97_read(ac97, AC97_INT_PAGING) & AC97_PAGE_MASK;
 snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page);
 ret = snd_ac97_update_bits(ac97, reg, mask, value);
 snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page_save);
 mutex_unlock(&ac97->page_mutex);
 return ret;
}
