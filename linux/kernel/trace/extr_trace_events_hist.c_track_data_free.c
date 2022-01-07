
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct track_data* private_data; } ;
struct track_data {struct track_data* comm; TYPE_1__ elt; struct track_data* key; } ;
struct hist_elt_data {struct hist_elt_data* comm; TYPE_1__ elt; struct hist_elt_data* key; } ;


 int kfree (struct track_data*) ;

__attribute__((used)) static void track_data_free(struct track_data *track_data)
{
 struct hist_elt_data *elt_data;

 if (!track_data)
  return;

 kfree(track_data->key);

 elt_data = track_data->elt.private_data;
 if (elt_data) {
  kfree(elt_data->comm);
  kfree(elt_data);
 }

 kfree(track_data);
}
