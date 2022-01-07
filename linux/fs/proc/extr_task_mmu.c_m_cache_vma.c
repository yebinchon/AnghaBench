
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; } ;
struct seq_file {scalar_t__ count; scalar_t__ size; unsigned long version; int private; } ;


 scalar_t__ m_next_vma (int ,struct vm_area_struct*) ;

__attribute__((used)) static void m_cache_vma(struct seq_file *m, struct vm_area_struct *vma)
{
 if (m->count < m->size)
  m->version = m_next_vma(m->private, vma) ? vma->vm_end : -1UL;
}
