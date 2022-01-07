
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int m_cache_vma (struct seq_file*,void*) ;
 int show_map_vma (struct seq_file*,void*) ;

__attribute__((used)) static int show_map(struct seq_file *m, void *v)
{
 show_map_vma(m, v);
 m_cache_vma(m, v);
 return 0;
}
