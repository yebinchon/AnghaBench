
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct hist_elt_data* private_data; } ;
struct track_data {unsigned int key_len; TYPE_1__ elt; struct hist_trigger_data* hist_data; struct action_data* action_data; void* key; } ;
struct hist_trigger_data {int dummy; } ;
struct hist_elt_data {void* comm; } ;
struct action_data {int dummy; } ;


 int ENOMEM ;
 struct track_data* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int TASK_COMM_LEN ;
 void* kzalloc (int,int ) ;
 int track_data_free (struct track_data*) ;

__attribute__((used)) static struct track_data *track_data_alloc(unsigned int key_len,
        struct action_data *action_data,
        struct hist_trigger_data *hist_data)
{
 struct track_data *data = kzalloc(sizeof(*data), GFP_KERNEL);
 struct hist_elt_data *elt_data;

 if (!data)
  return ERR_PTR(-ENOMEM);

 data->key = kzalloc(key_len, GFP_KERNEL);
 if (!data->key) {
  track_data_free(data);
  return ERR_PTR(-ENOMEM);
 }

 data->key_len = key_len;
 data->action_data = action_data;
 data->hist_data = hist_data;

 elt_data = kzalloc(sizeof(*elt_data), GFP_KERNEL);
 if (!elt_data) {
  track_data_free(data);
  return ERR_PTR(-ENOMEM);
 }
 data->elt.private_data = elt_data;

 elt_data->comm = kzalloc(TASK_COMM_LEN, GFP_KERNEL);
 if (!elt_data->comm) {
  track_data_free(data);
  return ERR_PTR(-ENOMEM);
 }

 return data;
}
