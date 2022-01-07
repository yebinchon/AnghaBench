
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int * build_ops; } ;


 int patch_it2646_ops ;
 int snd_ac97_write_cache (struct snd_ac97*,int,int) ;

__attribute__((used)) static int patch_it2646(struct snd_ac97 * ac97)
{
 ac97->build_ops = &patch_it2646_ops;

 snd_ac97_write_cache(ac97, 0x5E, 0x0808);
 snd_ac97_write_cache(ac97, 0x7A, 0x0808);
 return 0;
}
