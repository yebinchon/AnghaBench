
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dumper {int btf; } ;
typedef int __u8 ;
typedef int __u32 ;


 int btf__resolve_type (int ,int ) ;
 int btf_dumper_do_type (struct btf_dumper const*,int,int ,void const*) ;

__attribute__((used)) static int btf_dumper_modifier(const struct btf_dumper *d, __u32 type_id,
          __u8 bit_offset, const void *data)
{
 int actual_type_id;

 actual_type_id = btf__resolve_type(d->btf, type_id);
 if (actual_type_id < 0)
  return actual_type_id;

 return btf_dumper_do_type(d, actual_type_id, bit_offset, data);
}
