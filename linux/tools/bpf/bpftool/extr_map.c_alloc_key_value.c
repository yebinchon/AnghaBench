
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {scalar_t__ value_size; scalar_t__ key_size; } ;


 void* alloc_value (struct bpf_map_info*) ;
 int free (void*) ;
 void* malloc (scalar_t__) ;
 int p_err (char*) ;

__attribute__((used)) static int alloc_key_value(struct bpf_map_info *info, void **key, void **value)
{
 *key = ((void*)0);
 *value = ((void*)0);

 if (info->key_size) {
  *key = malloc(info->key_size);
  if (!*key) {
   p_err("key mem alloc failed");
   return -1;
  }
 }

 if (info->value_size) {
  *value = alloc_value(info);
  if (!*value) {
   p_err("value mem alloc failed");
   free(*key);
   *key = ((void*)0);
   return -1;
  }
 }

 return 0;
}
