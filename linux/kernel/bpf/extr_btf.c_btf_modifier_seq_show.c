
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
struct TYPE_2__ {int (* seq_show ) (struct btf const*,struct btf_type const*,int ,void*,int ,struct seq_file*) ;} ;


 struct btf_type* btf_type_id_resolve (struct btf const*,int *) ;
 TYPE_1__* btf_type_ops (struct btf_type const*) ;
 int stub1 (struct btf const*,struct btf_type const*,int ,void*,int ,struct seq_file*) ;

__attribute__((used)) static void btf_modifier_seq_show(const struct btf *btf,
      const struct btf_type *t,
      u32 type_id, void *data,
      u8 bits_offset, struct seq_file *m)
{
 t = btf_type_id_resolve(btf, &type_id);

 btf_type_ops(t)->seq_show(btf, t, type_id, data, bits_offset, m);
}
