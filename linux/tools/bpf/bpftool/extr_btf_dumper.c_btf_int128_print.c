
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;
typedef scalar_t__ __u64 ;


 int jsonw_printf (int *,char*,scalar_t__,...) ;

__attribute__((used)) static void btf_int128_print(json_writer_t *jw, const void *data,
        bool is_plain_text)
{







 __u64 upper_num, lower_num;





 upper_num = *(__u64 *)(data + 8);
 lower_num = *(__u64 *)data;


 if (is_plain_text) {
  if (upper_num == 0)
   jsonw_printf(jw, "0x%llx", lower_num);
  else
   jsonw_printf(jw, "0x%llx%016llx", upper_num, lower_num);
 } else {
  if (upper_num == 0)
   jsonw_printf(jw, "\"0x%llx\"", lower_num);
  else
   jsonw_printf(jw, "\"0x%llx%016llx\"", upper_num, lower_num);
 }
}
