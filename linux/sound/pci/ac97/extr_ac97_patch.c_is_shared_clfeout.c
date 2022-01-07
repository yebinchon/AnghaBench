
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int indep_surround; } ;


 scalar_t__ is_clfe_on (struct snd_ac97*) ;

__attribute__((used)) static inline int is_shared_clfeout(struct snd_ac97 *ac97)
{
 return !ac97->indep_surround && is_clfe_on(ac97);
}
