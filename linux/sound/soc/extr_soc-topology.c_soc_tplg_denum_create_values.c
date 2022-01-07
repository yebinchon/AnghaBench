
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* dvalues; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct soc_enum {TYPE_2__ dobj; } ;
struct snd_soc_tplg_enum_control {int * values; int items; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int soc_tplg_denum_create_values(struct soc_enum *se,
 struct snd_soc_tplg_enum_control *ec)
{
 int i;

 if (le32_to_cpu(ec->items) > sizeof(*ec->values))
  return -EINVAL;

 se->dobj.control.dvalues = kzalloc(le32_to_cpu(ec->items) *
        sizeof(u32),
        GFP_KERNEL);
 if (!se->dobj.control.dvalues)
  return -ENOMEM;


 for (i = 0; i < le32_to_cpu(ec->items); i++) {
  se->dobj.control.dvalues[i] = le32_to_cpu(ec->values[i]);
 }

 return 0;
}
