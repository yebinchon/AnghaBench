
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct skl_algo_data* private; } ;
struct soc_bytes_ext {TYPE_2__ dobj; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct snd_soc_tplg_bytes_control {TYPE_1__ priv; } ;
struct skl_dfw_algo_data {int max; int params; int set_params; int param_id; } ;
struct skl_algo_data {int max; int size; void* params; int set_params; int param_id; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int skl_init_algo_data(struct device *dev, struct soc_bytes_ext *be,
     struct snd_soc_tplg_bytes_control *bc)
{
 struct skl_algo_data *ac;
 struct skl_dfw_algo_data *dfw_ac =
    (struct skl_dfw_algo_data *)bc->priv.data;

 ac = devm_kzalloc(dev, sizeof(*ac), GFP_KERNEL);
 if (!ac)
  return -ENOMEM;


 ac->max = dfw_ac->max;
 ac->param_id = dfw_ac->param_id;
 ac->set_params = dfw_ac->set_params;
 ac->size = dfw_ac->max;

 if (ac->max) {
  ac->params = devm_kzalloc(dev, ac->max, GFP_KERNEL);
  if (!ac->params)
   return -ENOMEM;

  memcpy(ac->params, dfw_ac->params, ac->max);
 }

 be->dobj.private = ac;
 return 0;
}
