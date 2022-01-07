
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf {int dummy; } ;


 int seq_printf (struct seq_file*,char*,void*) ;

__attribute__((used)) static void btf_ptr_seq_show(const struct btf *btf, const struct btf_type *t,
        u32 type_id, void *data, u8 bits_offset,
        struct seq_file *m)
{

 seq_printf(m, "%p", *(void **)data);
}
