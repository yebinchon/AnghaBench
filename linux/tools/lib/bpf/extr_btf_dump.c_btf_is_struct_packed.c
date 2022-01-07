
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int size; } ;
struct btf_member {int offset; int type; } ;
struct btf {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int btf_align_of (struct btf const*,int ) ;
 int btf_member_bitfield_size (struct btf_type const*,int) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;

__attribute__((used)) static bool btf_is_struct_packed(const struct btf *btf, __u32 id,
     const struct btf_type *t)
{
 const struct btf_member *m;
 int align, i, bit_sz;
 __u16 vlen;

 align = btf_align_of(btf, id);

 if (t->size % align)
  return 1;

 m = btf_members(t);
 vlen = btf_vlen(t);

 for (i = 0; i < vlen; i++, m++) {
  align = btf_align_of(btf, m->type);
  bit_sz = btf_member_bitfield_size(t, i);
  if (bit_sz == 0 && m->offset % (8 * align) != 0)
   return 1;
 }





 return 0;
}
