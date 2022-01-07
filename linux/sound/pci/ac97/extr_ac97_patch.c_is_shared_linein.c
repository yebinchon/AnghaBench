
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int indep_surround; } ;


 int is_surround_on (struct snd_ac97*) ;

__attribute__((used)) static inline int is_shared_linein(struct snd_ac97 *ac97)
{
 return !ac97->indep_surround && !is_surround_on(ac97);
}
