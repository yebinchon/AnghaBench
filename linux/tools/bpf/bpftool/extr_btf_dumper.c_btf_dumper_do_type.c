
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;
struct btf_dumper {int jw; int is_plain_text; int btf; } ;
typedef int __u8 ;
typedef int __u32 ;


 int BTF_INFO_KIND (int ) ;
 int EINVAL ;
 struct btf_type* btf__type_by_id (int ,int ) ;
 int btf_dumper_array (struct btf_dumper const*,int ,void const*) ;
 int btf_dumper_datasec (struct btf_dumper const*,int ,void const*) ;
 int btf_dumper_enum (void const*,int ) ;
 int btf_dumper_int (struct btf_type const*,int ,void const*,int ,int ) ;
 int btf_dumper_modifier (struct btf_dumper const*,int ,int ,void const*) ;
 int btf_dumper_ptr (void const*,int ,int ) ;
 int btf_dumper_struct (struct btf_dumper const*,int ,void const*) ;
 int btf_dumper_var (struct btf_dumper const*,int ,int ,void const*) ;
 int jsonw_printf (int ,char*) ;

__attribute__((used)) static int btf_dumper_do_type(const struct btf_dumper *d, __u32 type_id,
         __u8 bit_offset, const void *data)
{
 const struct btf_type *t = btf__type_by_id(d->btf, type_id);

 switch (BTF_INFO_KIND(t->info)) {
 case 136:
  return btf_dumper_int(t, bit_offset, data, d->jw,
         d->is_plain_text);
 case 133:
 case 131:
  return btf_dumper_struct(d, type_id, data);
 case 141:
  return btf_dumper_array(d, type_id, data);
 case 138:
  btf_dumper_enum(data, d->jw);
  return 0;
 case 135:
  btf_dumper_ptr(data, d->jw, d->is_plain_text);
  return 0;
 case 130:
  jsonw_printf(d->jw, "(unknown)");
  return 0;
 case 137:

  jsonw_printf(d->jw, "(fwd-kind-invalid)");
  return -EINVAL;
 case 132:
 case 128:
 case 140:
 case 134:
  return btf_dumper_modifier(d, type_id, bit_offset, data);
 case 129:
  return btf_dumper_var(d, type_id, bit_offset, data);
 case 139:
  return btf_dumper_datasec(d, type_id, data);
 default:
  jsonw_printf(d->jw, "(unsupported-kind");
  return -EINVAL;
 }
}
