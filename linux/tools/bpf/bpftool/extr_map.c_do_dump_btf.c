
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dumper {int jw; } ;
struct bpf_map_info {scalar_t__ btf_value_type_id; int value_size; int type; scalar_t__ btf_key_type_id; } ;


 int btf_dumper_type (struct btf_dumper const*,scalar_t__,void*) ;
 unsigned int get_possible_cpus () ;
 int jsonw_end_array (int ) ;
 int jsonw_end_object (int ) ;
 int jsonw_int_field (int ,char*,unsigned int) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_array (int ) ;
 int jsonw_start_object (int ) ;
 int map_is_per_cpu (int ) ;
 unsigned int round_up (int ,int) ;

__attribute__((used)) static int do_dump_btf(const struct btf_dumper *d,
         struct bpf_map_info *map_info, void *key,
         void *value)
{
 int ret;


 jsonw_start_object(d->jw);

 if (map_info->btf_key_type_id) {
  jsonw_name(d->jw, "key");

  ret = btf_dumper_type(d, map_info->btf_key_type_id, key);
  if (ret)
   goto err_end_obj;
 }

 if (!map_is_per_cpu(map_info->type)) {
  jsonw_name(d->jw, "value");
  ret = btf_dumper_type(d, map_info->btf_value_type_id, value);
 } else {
  unsigned int i, n, step;

  jsonw_name(d->jw, "values");
  jsonw_start_array(d->jw);
  n = get_possible_cpus();
  step = round_up(map_info->value_size, 8);
  for (i = 0; i < n; i++) {
   jsonw_start_object(d->jw);
   jsonw_int_field(d->jw, "cpu", i);
   jsonw_name(d->jw, "value");
   ret = btf_dumper_type(d, map_info->btf_value_type_id,
           value + i * step);
   jsonw_end_object(d->jw);
   if (ret)
    break;
  }
  jsonw_end_array(d->jw);
 }

err_end_obj:

 jsonw_end_object(d->jw);

 return ret;
}
