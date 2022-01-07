
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct TYPE_3__ {int id; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* q6afe_dais ;

__attribute__((used)) static int q6afe_of_xlate_dai_name(struct snd_soc_component *component,
       struct of_phandle_args *args,
       const char **dai_name)
{
 int id = args->args[0];
 int ret = -EINVAL;
 int i;

 for (i = 0; i < ARRAY_SIZE(q6afe_dais); i++) {
  if (q6afe_dais[i].id == id) {
   *dai_name = q6afe_dais[i].name;
   ret = 0;
   break;
  }
 }

 return ret;
}
