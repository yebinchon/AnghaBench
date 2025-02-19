
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_constraint_list {int count; scalar_t__ list; } ;
struct davinci_mcasp {int tdm_slots; scalar_t__* tdm_mask; struct snd_pcm_hw_constraint_list* chconstr; } ;


 int hweight32 (scalar_t__) ;

__attribute__((used)) static int davinci_mcasp_ch_constraint(struct davinci_mcasp *mcasp, int stream,
           int serializers)
{
 struct snd_pcm_hw_constraint_list *cl = &mcasp->chconstr[stream];
 unsigned int *list = (unsigned int *) cl->list;
 int slots = mcasp->tdm_slots;
 int i, count = 0;

 if (mcasp->tdm_mask[stream])
  slots = hweight32(mcasp->tdm_mask[stream]);

 for (i = 1; i <= slots; i++)
  list[count++] = i;

 for (i = 2; i <= serializers; i++)
  list[count++] = i*slots;

 cl->count = count;

 return 0;
}
