
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_var_secinfo {int offset; int type; } ;
struct btf_type {int name_off; int info; } ;
struct btf_dumper {int jw; int btf; } ;
typedef int __u32 ;


 int BTF_INFO_VLEN (int ) ;
 int EINVAL ;
 int btf__name_by_offset (int ,int ) ;
 struct btf_type* btf__type_by_id (int ,int ) ;
 int btf_dumper_do_type (struct btf_dumper const*,int ,int ,void const*) ;
 int jsonw_end_array (int ) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,int ) ;
 int jsonw_start_array (int ) ;
 int jsonw_start_object (int ) ;

__attribute__((used)) static int btf_dumper_datasec(const struct btf_dumper *d, __u32 type_id,
         const void *data)
{
 struct btf_var_secinfo *vsi;
 const struct btf_type *t;
 int ret = 0, i, vlen;

 t = btf__type_by_id(d->btf, type_id);
 if (!t)
  return -EINVAL;

 vlen = BTF_INFO_VLEN(t->info);
 vsi = (struct btf_var_secinfo *)(t + 1);

 jsonw_start_object(d->jw);
 jsonw_name(d->jw, btf__name_by_offset(d->btf, t->name_off));
 jsonw_start_array(d->jw);
 for (i = 0; i < vlen; i++) {
  ret = btf_dumper_do_type(d, vsi[i].type, 0, data + vsi[i].offset);
  if (ret)
   break;
 }
 jsonw_end_array(d->jw);
 jsonw_end_object(d->jw);

 return ret;
}
