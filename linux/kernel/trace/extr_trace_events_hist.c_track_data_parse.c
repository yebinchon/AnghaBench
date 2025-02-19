
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_trigger_data {TYPE_2__* event_file; } ;
struct TYPE_3__ {int var_str; } ;
struct action_data {TYPE_1__ track_data; } ;
typedef enum handler_id { ____Placeholder_handler_id } handler_id ;
struct TYPE_4__ {int tr; } ;


 int EINVAL ;
 int ENOMEM ;
 struct action_data* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int action_parse (int ,char*,struct action_data*,int) ;
 int kstrdup (char*,int ) ;
 struct action_data* kzalloc (int,int ) ;
 char* strsep (char**,char*) ;
 int track_data_destroy (struct hist_trigger_data*,struct action_data*) ;

__attribute__((used)) static struct action_data *track_data_parse(struct hist_trigger_data *hist_data,
         char *str, enum handler_id handler)
{
 struct action_data *data;
 int ret = -EINVAL;
 char *var_str;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ERR_PTR(-ENOMEM);

 var_str = strsep(&str, ")");
 if (!var_str || !str) {
  ret = -EINVAL;
  goto free;
 }

 data->track_data.var_str = kstrdup(var_str, GFP_KERNEL);
 if (!data->track_data.var_str) {
  ret = -ENOMEM;
  goto free;
 }

 ret = action_parse(hist_data->event_file->tr, str, data, handler);
 if (ret)
  goto free;
 out:
 return data;
 free:
 track_data_destroy(hist_data, data);
 data = ERR_PTR(ret);
 goto out;
}
