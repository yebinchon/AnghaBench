
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_fault {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* swap_cluster_readahead (int ,int ,struct vm_fault*) ;
 scalar_t__ swap_use_vma_readahead () ;
 struct page* swap_vma_readahead (int ,int ,struct vm_fault*) ;

struct page *swapin_readahead(swp_entry_t entry, gfp_t gfp_mask,
    struct vm_fault *vmf)
{
 return swap_use_vma_readahead() ?
   swap_vma_readahead(entry, gfp_mask, vmf) :
   swap_cluster_readahead(entry, gfp_mask, vmf);
}
