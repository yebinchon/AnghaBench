
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
struct TYPE_2__ {int (* seq_show ) (struct btf const*,struct btf_type const*,int ,void*,int ,struct seq_file*) ;} ;


 struct btf_type* btf_type_by_id (struct btf const*,int ) ;
 TYPE_1__* btf_type_ops (struct btf_type const*) ;
 int stub1 (struct btf const*,struct btf_type const*,int ,void*,int ,struct seq_file*) ;

void btf_type_seq_show(const struct btf *btf, u32 type_id, void *obj,
         struct seq_file *m)
{
 const struct btf_type *t = btf_type_by_id(btf, type_id);

 btf_type_ops(t)->seq_show(btf, t, type_id, obj, 0, m);
}
