
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_topology_token {scalar_t__ type; scalar_t__ token; int size; int offset; int (* get_token ) (struct snd_soc_tplg_vendor_uuid_elem*,void*,int ,int ) ;} ;
struct snd_soc_tplg_vendor_uuid_elem {int token; } ;
struct snd_soc_tplg_vendor_array {struct snd_soc_tplg_vendor_uuid_elem* uuid; int num_elems; } ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ SND_SOC_TPLG_TUPLE_TYPE_UUID ;
 scalar_t__ le32_to_cpu (int ) ;
 int stub1 (struct snd_soc_tplg_vendor_uuid_elem*,void*,int ,int ) ;

__attribute__((used)) static void sof_parse_uuid_tokens(struct snd_soc_component *scomp,
      void *object,
      const struct sof_topology_token *tokens,
      int count,
      struct snd_soc_tplg_vendor_array *array)
{
 struct snd_soc_tplg_vendor_uuid_elem *elem;
 int i, j;


 for (i = 0; i < le32_to_cpu(array->num_elems); i++) {
  elem = &array->uuid[i];


  for (j = 0; j < count; j++) {

   if (tokens[j].type != SND_SOC_TPLG_TUPLE_TYPE_UUID)
    continue;


   if (tokens[j].token != le32_to_cpu(elem->token))
    continue;


   tokens[j].get_token(elem, object, tokens[j].offset,
         tokens[j].size);
  }
 }
}
