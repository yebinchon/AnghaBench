
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int flags; scalar_t__ cow_page; int * pmd; scalar_t__ pgoff; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; TYPE_1__* vm_file; } ;
struct iomap_ops {int (* iomap_begin ) (struct inode*,scalar_t__,int,unsigned int,struct iomap*) ;int (* iomap_end ) (struct inode*,scalar_t__,int,int,unsigned int,struct iomap*) ;} ;
struct iomap {scalar_t__ offset; scalar_t__ length; int type; int flags; int dax_dev; int bdev; int member_0; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; int i_pages; } ;
typedef int sector_t ;
typedef int pfn_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 int EIO ;
 int FAULT_FLAG_WRITE ;
 unsigned int IOMAP_FAULT ;
 int IOMAP_F_NEW ;



 unsigned int IOMAP_WRITE ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PGMAJFAULT ;
 int VM_FAULT_DONE_COW ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_NEEDDSYNC ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int XA_STATE (int ,int *,scalar_t__) ;
 int __SetPageUptodate (scalar_t__) ;
 int clear_user_highpage (scalar_t__,unsigned long) ;
 int copy_user_dax (int ,int ,int ,int,scalar_t__,unsigned long) ;
 int count_memcg_event_mm (int ,int ) ;
 int count_vm_event (int ) ;
 int dax_fault_is_synchronous (unsigned int,struct vm_area_struct*,struct iomap*) ;
 int dax_fault_return (int) ;
 void* dax_insert_entry (int *,struct address_space*,struct vm_fault*,void*,int ,int ,int) ;
 int dax_iomap_pfn (struct iomap*,scalar_t__,int,int *) ;
 int dax_iomap_sector (struct iomap*,scalar_t__) ;
 int dax_load_hole (int *,struct address_space*,void**,struct vm_fault*) ;
 int dax_unlock_entry (int *,void*) ;
 int finish_fault (struct vm_fault*) ;
 void* grab_mapping_entry (int *,struct address_space*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ pmd_devmap (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int stub1 (struct inode*,scalar_t__,int,unsigned int,struct iomap*) ;
 int stub2 (struct inode*,scalar_t__,int,int,unsigned int,struct iomap*) ;
 int trace_dax_insert_mapping (struct inode*,struct vm_fault*,void*) ;
 int trace_dax_pte_fault (struct inode*,struct vm_fault*,int) ;
 int trace_dax_pte_fault_done (struct inode*,struct vm_fault*,int) ;
 int vmf_insert_mixed (struct vm_area_struct*,unsigned long,int ) ;
 int vmf_insert_mixed_mkwrite (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ xa_is_internal (void*) ;
 int xa_to_internal (void*) ;
 int xas ;

__attribute__((used)) static vm_fault_t dax_iomap_pte_fault(struct vm_fault *vmf, pfn_t *pfnp,
          int *iomap_errp, const struct iomap_ops *ops)
{
 struct vm_area_struct *vma = vmf->vma;
 struct address_space *mapping = vma->vm_file->f_mapping;
 XA_STATE(xas, &mapping->i_pages, vmf->pgoff);
 struct inode *inode = mapping->host;
 unsigned long vaddr = vmf->address;
 loff_t pos = (loff_t)vmf->pgoff << PAGE_SHIFT;
 struct iomap iomap = { 0 };
 unsigned flags = IOMAP_FAULT;
 int error, major = 0;
 bool write = vmf->flags & FAULT_FLAG_WRITE;
 bool sync;
 vm_fault_t ret = 0;
 void *entry;
 pfn_t pfn;

 trace_dax_pte_fault(inode, vmf, ret);





 if (pos >= i_size_read(inode)) {
  ret = VM_FAULT_SIGBUS;
  goto out;
 }

 if (write && !vmf->cow_page)
  flags |= IOMAP_WRITE;

 entry = grab_mapping_entry(&xas, mapping, 0);
 if (xa_is_internal(entry)) {
  ret = xa_to_internal(entry);
  goto out;
 }







 if (pmd_trans_huge(*vmf->pmd) || pmd_devmap(*vmf->pmd)) {
  ret = VM_FAULT_NOPAGE;
  goto unlock_entry;
 }






 error = ops->iomap_begin(inode, pos, PAGE_SIZE, flags, &iomap);
 if (iomap_errp)
  *iomap_errp = error;
 if (error) {
  ret = dax_fault_return(error);
  goto unlock_entry;
 }
 if (WARN_ON_ONCE(iomap.offset + iomap.length < pos + PAGE_SIZE)) {
  error = -EIO;
  goto error_finish_iomap;
 }

 if (vmf->cow_page) {
  sector_t sector = dax_iomap_sector(&iomap, pos);

  switch (iomap.type) {
  case 130:
  case 128:
   clear_user_highpage(vmf->cow_page, vaddr);
   break;
  case 129:
   error = copy_user_dax(iomap.bdev, iomap.dax_dev,
     sector, PAGE_SIZE, vmf->cow_page, vaddr);
   break;
  default:
   WARN_ON_ONCE(1);
   error = -EIO;
   break;
  }

  if (error)
   goto error_finish_iomap;

  __SetPageUptodate(vmf->cow_page);
  ret = finish_fault(vmf);
  if (!ret)
   ret = VM_FAULT_DONE_COW;
  goto finish_iomap;
 }

 sync = dax_fault_is_synchronous(flags, vma, &iomap);

 switch (iomap.type) {
 case 129:
  if (iomap.flags & IOMAP_F_NEW) {
   count_vm_event(PGMAJFAULT);
   count_memcg_event_mm(vma->vm_mm, PGMAJFAULT);
   major = VM_FAULT_MAJOR;
  }
  error = dax_iomap_pfn(&iomap, pos, PAGE_SIZE, &pfn);
  if (error < 0)
   goto error_finish_iomap;

  entry = dax_insert_entry(&xas, mapping, vmf, entry, pfn,
       0, write && !sync);







  if (sync) {
   if (WARN_ON_ONCE(!pfnp)) {
    error = -EIO;
    goto error_finish_iomap;
   }
   *pfnp = pfn;
   ret = VM_FAULT_NEEDDSYNC | major;
   goto finish_iomap;
  }
  trace_dax_insert_mapping(inode, vmf, entry);
  if (write)
   ret = vmf_insert_mixed_mkwrite(vma, vaddr, pfn);
  else
   ret = vmf_insert_mixed(vma, vaddr, pfn);

  goto finish_iomap;
 case 128:
 case 130:
  if (!write) {
   ret = dax_load_hole(&xas, mapping, &entry, vmf);
   goto finish_iomap;
  }

 default:
  WARN_ON_ONCE(1);
  error = -EIO;
  break;
 }

 error_finish_iomap:
 ret = dax_fault_return(error);
 finish_iomap:
 if (ops->iomap_end) {
  int copied = PAGE_SIZE;

  if (ret & VM_FAULT_ERROR)
   copied = 0;






  ops->iomap_end(inode, pos, PAGE_SIZE, copied, flags, &iomap);
 }
 unlock_entry:
 dax_unlock_entry(&xas, entry);
 out:
 trace_dax_pte_fault_done(inode, vmf, ret);
 return ret | major;
}
