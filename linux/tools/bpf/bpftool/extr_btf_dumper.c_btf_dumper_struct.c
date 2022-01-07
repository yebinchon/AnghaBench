
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;
struct btf_member {int type; int name_off; scalar_t__ offset; } ;
struct btf_dumper {int jw; int is_plain_text; int btf; } ;
typedef scalar_t__ __u32 ;


 int BITS_PER_BYTE_MASKED (scalar_t__) ;
 int BITS_ROUNDDOWN_BYTES (scalar_t__) ;
 int BTF_INFO_KFLAG (int ) ;
 int BTF_INFO_VLEN (int ) ;
 scalar_t__ BTF_MEMBER_BITFIELD_SIZE (scalar_t__) ;
 scalar_t__ BTF_MEMBER_BIT_OFFSET (scalar_t__) ;
 int EINVAL ;
 int btf__name_by_offset (int ,int ) ;
 struct btf_type* btf__type_by_id (int ,scalar_t__) ;
 int btf_dumper_bitfield (scalar_t__,int ,void const*,int ,int ) ;
 int btf_dumper_do_type (struct btf_dumper const*,int ,int ,void const*) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,int ) ;
 int jsonw_start_object (int ) ;

__attribute__((used)) static int btf_dumper_struct(const struct btf_dumper *d, __u32 type_id,
        const void *data)
{
 const struct btf_type *t;
 struct btf_member *m;
 const void *data_off;
 int kind_flag;
 int ret = 0;
 int i, vlen;

 t = btf__type_by_id(d->btf, type_id);
 if (!t)
  return -EINVAL;

 kind_flag = BTF_INFO_KFLAG(t->info);
 vlen = BTF_INFO_VLEN(t->info);
 jsonw_start_object(d->jw);
 m = (struct btf_member *)(t + 1);

 for (i = 0; i < vlen; i++) {
  __u32 bit_offset = m[i].offset;
  __u32 bitfield_size = 0;

  if (kind_flag) {
   bitfield_size = BTF_MEMBER_BITFIELD_SIZE(bit_offset);
   bit_offset = BTF_MEMBER_BIT_OFFSET(bit_offset);
  }

  jsonw_name(d->jw, btf__name_by_offset(d->btf, m[i].name_off));
  data_off = data + BITS_ROUNDDOWN_BYTES(bit_offset);
  if (bitfield_size) {
   btf_dumper_bitfield(bitfield_size,
         BITS_PER_BYTE_MASKED(bit_offset),
         data_off, d->jw, d->is_plain_text);
  } else {
   ret = btf_dumper_do_type(d, m[i].type,
       BITS_PER_BYTE_MASKED(bit_offset),
       data_off);
   if (ret)
    break;
  }
 }

 jsonw_end_object(d->jw);

 return ret;
}
