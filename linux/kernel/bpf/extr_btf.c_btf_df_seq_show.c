
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int info; } ;
struct btf {int dummy; } ;


 int BTF_INFO_KIND (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void btf_df_seq_show(const struct btf *btf, const struct btf_type *t,
       u32 type_id, void *data, u8 bits_offsets,
       struct seq_file *m)
{
 seq_printf(m, "<unsupported kind:%u>", BTF_INFO_KIND(t->info));
}
