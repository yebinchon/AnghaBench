
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dumper {int dummy; } ;
typedef int __u32 ;


 int btf_dumper_do_type (struct btf_dumper const*,int ,int ,void const*) ;

int btf_dumper_type(const struct btf_dumper *d, __u32 type_id,
      const void *data)
{
 return btf_dumper_do_type(d, type_id, 0, data);
}
