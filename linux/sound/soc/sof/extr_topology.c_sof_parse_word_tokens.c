
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sof_topology_token {scalar_t__ type; int token; size_t offset; int size; int (* get_token ) (struct snd_soc_tplg_vendor_value_elem*,void*,size_t,int ) ;} ;
struct sof_ipc_dai_dmic_pdm_ctrl {int dummy; } ;
struct snd_sof_dev {size_t* private; int dev; } ;
struct snd_soc_tplg_vendor_value_elem {int token; } ;
struct snd_soc_tplg_vendor_array {struct snd_soc_tplg_vendor_value_elem* value; int num_elems; } ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ SND_SOC_TPLG_TUPLE_TYPE_BOOL ;
 scalar_t__ SND_SOC_TPLG_TUPLE_TYPE_BYTE ;
 scalar_t__ SND_SOC_TPLG_TUPLE_TYPE_SHORT ;
 scalar_t__ SND_SOC_TPLG_TUPLE_TYPE_WORD ;







 int dev_err (int ,char*) ;
 int le32_to_cpu (int ) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int stub1 (struct snd_soc_tplg_vendor_value_elem*,void*,size_t,int ) ;

__attribute__((used)) static void sof_parse_word_tokens(struct snd_soc_component *scomp,
      void *object,
      const struct sof_topology_token *tokens,
      int count,
      struct snd_soc_tplg_vendor_array *array)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 struct snd_soc_tplg_vendor_value_elem *elem;
 size_t size = sizeof(struct sof_ipc_dai_dmic_pdm_ctrl);
 int i, j;
 u32 offset;
 u32 *index = ((void*)0);


 for (i = 0; i < le32_to_cpu(array->num_elems); i++) {
  elem = &array->value[i];


  for (j = 0; j < count; j++) {

   if (!(tokens[j].type == SND_SOC_TPLG_TUPLE_TYPE_WORD ||
         tokens[j].type == SND_SOC_TPLG_TUPLE_TYPE_SHORT ||
         tokens[j].type == SND_SOC_TPLG_TUPLE_TYPE_BYTE ||
         tokens[j].type == SND_SOC_TPLG_TUPLE_TYPE_BOOL))
    continue;


   if (tokens[j].token != le32_to_cpu(elem->token))
    continue;


   if (sdev->private)
    index = sdev->private;


   switch (tokens[j].token) {
   case 133:


    if (index)
     (*index)++;

   case 132:
   case 131:
   case 130:
   case 129:
   case 134:
   case 128:


    if (!index || *index == 0) {
     dev_err(sdev->dev,
      "error: invalid array offset\n");
     continue;
    } else {

     offset = size * (*index - 1);
    }
    break;
   default:
    offset = 0;
    break;
   }


   tokens[j].get_token(elem, object,
         offset + tokens[j].offset,
         tokens[j].size);
  }
 }
}
