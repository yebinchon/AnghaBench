
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
typedef int __u32 ;


 int btf__get_nr_types (struct btf const*) ;
 struct btf_type* btf__type_by_id (struct btf const*,int) ;
 int dump_btf_type (struct btf const*,int,struct btf_type const*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_array (int ) ;
 int jsonw_start_object (int ) ;

__attribute__((used)) static int dump_btf_raw(const struct btf *btf,
   __u32 *root_type_ids, int root_type_cnt)
{
 const struct btf_type *t;
 int i;

 if (json_output) {
  jsonw_start_object(json_wtr);
  jsonw_name(json_wtr, "types");
  jsonw_start_array(json_wtr);
 }

 if (root_type_cnt) {
  for (i = 0; i < root_type_cnt; i++) {
   t = btf__type_by_id(btf, root_type_ids[i]);
   dump_btf_type(btf, root_type_ids[i], t);
  }
 } else {
  int cnt = btf__get_nr_types(btf);

  for (i = 1; i <= cnt; i++) {
   t = btf__type_by_id(btf, i);
   dump_btf_type(btf, i, t);
  }
 }

 if (json_output) {
  jsonw_end_array(json_wtr);
  jsonw_end_object(json_wtr);
 }
 return 0;
}
