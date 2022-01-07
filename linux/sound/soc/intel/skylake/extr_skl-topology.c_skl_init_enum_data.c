
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* private; } ;
struct soc_enum {TYPE_2__ dobj; } ;
struct TYPE_3__ {int size; int data; } ;
struct snd_soc_tplg_enum_control {TYPE_1__ priv; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static int skl_init_enum_data(struct device *dev, struct soc_enum *se,
    struct snd_soc_tplg_enum_control *ec)
{

 void *data;

 if (ec->priv.size) {
  data = devm_kzalloc(dev, sizeof(ec->priv.size), GFP_KERNEL);
  if (!data)
   return -ENOMEM;
  memcpy(data, ec->priv.data, ec->priv.size);
  se->dobj.private = data;
 }

 return 0;

}
