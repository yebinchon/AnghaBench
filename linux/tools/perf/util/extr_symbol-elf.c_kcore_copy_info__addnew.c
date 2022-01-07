
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct phdr_data {int node; } ;
struct kcore_copy_info {int phdrs; } ;
typedef int off_t ;


 int list_add_tail (int *,int *) ;
 struct phdr_data* phdr_data__new (int ,int ,int ) ;

__attribute__((used)) static struct phdr_data *kcore_copy_info__addnew(struct kcore_copy_info *kci,
       u64 addr, u64 len,
       off_t offset)
{
 struct phdr_data *p = phdr_data__new(addr, len, offset);

 if (p)
  list_add_tail(&p->node, &kci->phdrs);

 return p;
}
