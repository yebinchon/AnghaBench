
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 struct page* find_lock_page (struct address_space*,int ) ;
 int vma_hugecache_offset (struct hstate*,struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static struct page *hugetlbfs_pagecache_page(struct hstate *h,
   struct vm_area_struct *vma, unsigned long address)
{
 struct address_space *mapping;
 pgoff_t idx;

 mapping = vma->vm_file->f_mapping;
 idx = vma_hugecache_offset(h, vma, address);

 return find_lock_page(mapping, idx);
}
