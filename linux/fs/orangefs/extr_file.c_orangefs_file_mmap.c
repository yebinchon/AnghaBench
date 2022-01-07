
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int * vm_ops; int vm_flags; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int GOSSIP_FILE_DEBUG ;
 int VM_RAND_READ ;
 int VM_SEQ_READ ;
 int file_accessed (struct file*) ;
 int file_inode (struct file*) ;
 int gossip_debug (int ,char*,char*) ;
 int orangefs_file_vm_ops ;
 int orangefs_revalidate_mapping (int ) ;

__attribute__((used)) static int orangefs_file_mmap(struct file *file, struct vm_area_struct *vma)
{
 int ret;

 ret = orangefs_revalidate_mapping(file_inode(file));
 if (ret)
  return ret;

 gossip_debug(GOSSIP_FILE_DEBUG,
       "orangefs_file_mmap: called on %s\n",
       (file ?
   (char *)file->f_path.dentry->d_name.name :
   (char *)"Unknown"));


 vma->vm_flags |= VM_SEQ_READ;
 vma->vm_flags &= ~VM_RAND_READ;

 file_accessed(file);
 vma->vm_ops = &orangefs_file_vm_ops;
 return 0;
}
