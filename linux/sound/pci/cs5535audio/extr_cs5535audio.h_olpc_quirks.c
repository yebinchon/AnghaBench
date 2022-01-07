
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct snd_ac97 {int dummy; } ;



__attribute__((used)) static inline int olpc_quirks(struct snd_card *card, struct snd_ac97 *ac97)
{
 return 0;
}
