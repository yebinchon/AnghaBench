
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_compare_arg {char** key; } ;
struct aa_data {int key; } ;


 int strcmp (int ,char const* const) ;

__attribute__((used)) static int datacmp(struct rhashtable_compare_arg *arg, const void *obj)
{
 const struct aa_data *data = obj;
 const char * const *key = arg->key;

 return strcmp(data->key, *key);
}
