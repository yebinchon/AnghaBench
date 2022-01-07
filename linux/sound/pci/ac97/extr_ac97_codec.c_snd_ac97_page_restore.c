
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int page_mutex; } ;


 int AC97_INT_PAGING ;
 int AC97_PAGE_MASK ;
 int mutex_unlock (int *) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int ,int) ;

__attribute__((used)) static void snd_ac97_page_restore(struct snd_ac97 *ac97, int page_save)
{
 if (page_save >= 0) {
  snd_ac97_update_bits(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page_save);
  mutex_unlock(&ac97->page_mutex);
 }
}
