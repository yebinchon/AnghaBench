
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_tplg {int dev; } ;
struct snd_soc_tplg_stream {int dummy; } ;
struct snd_soc_tplg_link_config_v4 {int * stream; int num_streams; int id; } ;
struct snd_soc_tplg_link_config {int * stream; int num_streams; int id; int size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 struct snd_soc_tplg_link_config* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int link_new_ver(struct soc_tplg *tplg,
   struct snd_soc_tplg_link_config *src,
   struct snd_soc_tplg_link_config **link)
{
 struct snd_soc_tplg_link_config *dest;
 struct snd_soc_tplg_link_config_v4 *src_v4;
 int i;

 *link = ((void*)0);

 if (le32_to_cpu(src->size) !=
     sizeof(struct snd_soc_tplg_link_config_v4)) {
  dev_err(tplg->dev, "ASoC: invalid physical link config size\n");
  return -EINVAL;
 }

 dev_warn(tplg->dev, "ASoC: old version of physical link config\n");

 src_v4 = (struct snd_soc_tplg_link_config_v4 *)src;
 dest = kzalloc(sizeof(*dest), GFP_KERNEL);
 if (!dest)
  return -ENOMEM;

 dest->size = cpu_to_le32(sizeof(*dest));
 dest->id = src_v4->id;
 dest->num_streams = src_v4->num_streams;
 for (i = 0; i < le32_to_cpu(dest->num_streams); i++)
  memcpy(&dest->stream[i], &src_v4->stream[i],
         sizeof(struct snd_soc_tplg_stream));

 *link = dest;
 return 0;
}
