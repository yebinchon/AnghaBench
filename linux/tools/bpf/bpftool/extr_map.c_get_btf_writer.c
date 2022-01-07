
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_writer_t ;


 int * jsonw_new (int ) ;
 int jsonw_pretty (int *,int) ;
 int stdout ;

__attribute__((used)) static json_writer_t *get_btf_writer(void)
{
 json_writer_t *jw = jsonw_new(stdout);

 if (!jw)
  return ((void*)0);
 jsonw_pretty(jw, 1);

 return jw;
}
