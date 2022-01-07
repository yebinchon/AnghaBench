
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_data {struct aa_data* key; struct aa_data* data; } ;


 int kzfree (struct aa_data*) ;

__attribute__((used)) static void aa_free_data(void *ptr, void *arg)
{
 struct aa_data *data = ptr;

 kzfree(data->data);
 kzfree(data->key);
 kzfree(data);
}
