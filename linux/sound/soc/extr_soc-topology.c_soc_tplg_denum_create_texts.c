
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dtexts; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct soc_enum {int items; char const* const* texts; TYPE_2__ dobj; } ;
struct snd_soc_tplg_enum_control {int items; int * texts; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int * kcalloc (int,int,int ) ;
 int kstrdup (int ,int ) ;
 int le32_to_cpu (int) ;
 int soc_tplg_denum_remove_texts (struct soc_enum*) ;
 scalar_t__ strnlen (int ,scalar_t__) ;

__attribute__((used)) static int soc_tplg_denum_create_texts(struct soc_enum *se,
 struct snd_soc_tplg_enum_control *ec)
{
 int i, ret;

 se->dobj.control.dtexts =
  kcalloc(le32_to_cpu(ec->items), sizeof(char *), GFP_KERNEL);
 if (se->dobj.control.dtexts == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < ec->items; i++) {

  if (strnlen(ec->texts[i], SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
   SNDRV_CTL_ELEM_ID_NAME_MAXLEN) {
   ret = -EINVAL;
   goto err;
  }

  se->dobj.control.dtexts[i] = kstrdup(ec->texts[i], GFP_KERNEL);
  if (!se->dobj.control.dtexts[i]) {
   ret = -ENOMEM;
   goto err;
  }
 }

 se->items = le32_to_cpu(ec->items);
 se->texts = (const char * const *)se->dobj.control.dtexts;
 return 0;

err:
 se->items = i;
 soc_tplg_denum_remove_texts(se);
 return ret;
}
