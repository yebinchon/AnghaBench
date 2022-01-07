
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int link_list; struct snd_pcm_group* group; } ;
struct snd_pcm_group {int substreams; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void snd_pcm_group_assign(struct snd_pcm_substream *substream,
     struct snd_pcm_group *new_group)
{
 substream->group = new_group;
 list_move(&substream->link_list, &new_group->substreams);
}
