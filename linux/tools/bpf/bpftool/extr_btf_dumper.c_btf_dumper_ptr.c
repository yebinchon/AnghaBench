
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*,unsigned long) ;

__attribute__((used)) static void btf_dumper_ptr(const void *data, json_writer_t *jw,
      bool is_plain_text)
{
 if (is_plain_text)
  jsonw_printf(jw, "%p", data);
 else
  jsonw_printf(jw, "%lu", *(unsigned long *)data);
}
