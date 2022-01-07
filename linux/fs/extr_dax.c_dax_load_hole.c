
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct xa_state {int dummy; } ;
struct vm_fault {unsigned long address; int vma; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pfn_t ;


 int DAX_ZERO_PAGE ;
 void* dax_insert_entry (struct xa_state*,struct address_space*,struct vm_fault*,void*,int ,int ,int) ;
 int my_zero_pfn (unsigned long) ;
 int pfn_to_pfn_t (int ) ;
 int trace_dax_load_hole (struct inode*,struct vm_fault*,int ) ;
 int vmf_insert_mixed (int ,unsigned long,int ) ;

__attribute__((used)) static vm_fault_t dax_load_hole(struct xa_state *xas,
  struct address_space *mapping, void **entry,
  struct vm_fault *vmf)
{
 struct inode *inode = mapping->host;
 unsigned long vaddr = vmf->address;
 pfn_t pfn = pfn_to_pfn_t(my_zero_pfn(vaddr));
 vm_fault_t ret;

 *entry = dax_insert_entry(xas, mapping, vmf, *entry, pfn,
   DAX_ZERO_PAGE, 0);

 ret = vmf_insert_mixed(vmf->vma, vaddr, pfn);
 trace_dax_load_hole(inode, vmf, ret);
 return ret;
}
