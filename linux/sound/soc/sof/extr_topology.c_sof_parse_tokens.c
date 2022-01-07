
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sof_topology_token {int dummy; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_tplg_vendor_array {int size; int type; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;






 int dev_err (int ,char*,int) ;
 int le32_to_cpu (int) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sof_parse_string_tokens (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ;
 int sof_parse_uuid_tokens (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ;
 int sof_parse_word_tokens (struct snd_soc_component*,void*,struct sof_topology_token const*,int,struct snd_soc_tplg_vendor_array*) ;

__attribute__((used)) static int sof_parse_tokens(struct snd_soc_component *scomp,
       void *object,
       const struct sof_topology_token *tokens,
       int count,
       struct snd_soc_tplg_vendor_array *array,
       int priv_size)
{
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(scomp);
 int asize;

 while (priv_size > 0) {
  asize = le32_to_cpu(array->size);


  if (asize < 0) {
   dev_err(sdev->dev, "error: invalid array size 0x%x\n",
    asize);
   return -EINVAL;
  }


  priv_size -= asize;
  if (priv_size < 0) {
   dev_err(sdev->dev, "error: invalid array size 0x%x\n",
    asize);
   return -EINVAL;
  }


  switch (le32_to_cpu(array->type)) {
  case 129:
   sof_parse_uuid_tokens(scomp, object, tokens, count,
           array);
   break;
  case 130:
   sof_parse_string_tokens(scomp, object, tokens, count,
      array);
   break;
  case 133:
  case 132:
  case 128:
  case 131:
   sof_parse_word_tokens(scomp, object, tokens, count,
           array);
   break;
  default:
   dev_err(sdev->dev, "error: unknown token type %d\n",
    array->type);
   return -EINVAL;
  }


  array = (struct snd_soc_tplg_vendor_array *)((u8 *)array
   + asize);
 }
 return 0;
}
