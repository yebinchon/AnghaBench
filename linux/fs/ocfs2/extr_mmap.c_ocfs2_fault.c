
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int pgoff; int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_2__* vm_file; } ;
typedef int sigset_t ;
struct TYPE_6__ {int ip_blkno; } ;
struct TYPE_5__ {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int host; } ;


 TYPE_3__* OCFS2_I (int ) ;
 int filemap_fault (struct vm_fault*) ;
 int ocfs2_block_signals (int *) ;
 int ocfs2_unblock_signals (int *) ;
 int trace_ocfs2_fault (int ,struct vm_area_struct*,int ,int ) ;

__attribute__((used)) static vm_fault_t ocfs2_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 sigset_t oldset;
 vm_fault_t ret;

 ocfs2_block_signals(&oldset);
 ret = filemap_fault(vmf);
 ocfs2_unblock_signals(&oldset);

 trace_ocfs2_fault(OCFS2_I(vma->vm_file->f_mapping->host)->ip_blkno,
     vma, vmf->page, vmf->pgoff);
 return ret;
}
