
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int jsonw_printf (int *,char*,int) ;

__attribute__((used)) static void btf_dumper_enum(const void *data, json_writer_t *jw)
{
 jsonw_printf(jw, "%d", *(int *)data);
}
