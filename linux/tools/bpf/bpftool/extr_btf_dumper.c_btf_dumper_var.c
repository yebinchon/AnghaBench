
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int type; int name_off; } ;
struct btf_dumper {int jw; int btf; } ;
typedef int __u8 ;
typedef int __u32 ;


 int btf__name_by_offset (int ,int ) ;
 struct btf_type* btf__type_by_id (int ,int ) ;
 int btf_dumper_do_type (struct btf_dumper const*,int ,int ,void const*) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,int ) ;
 int jsonw_start_object (int ) ;

__attribute__((used)) static int btf_dumper_var(const struct btf_dumper *d, __u32 type_id,
     __u8 bit_offset, const void *data)
{
 const struct btf_type *t = btf__type_by_id(d->btf, type_id);
 int ret;

 jsonw_start_object(d->jw);
 jsonw_name(d->jw, btf__name_by_offset(d->btf, t->name_off));
 ret = btf_dumper_do_type(d, t->type, bit_offset, data);
 jsonw_end_object(d->jw);

 return ret;
}
