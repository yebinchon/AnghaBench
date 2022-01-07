
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_file; } ;
struct rb_node {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct inode* file_inode (int ) ;
 struct rb_node* find_node_in_range (struct inode*,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uprobes_treelock ;
 scalar_t__ vaddr_to_offset (struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static bool
vma_has_uprobes(struct vm_area_struct *vma, unsigned long start, unsigned long end)
{
 loff_t min, max;
 struct inode *inode;
 struct rb_node *n;

 inode = file_inode(vma->vm_file);

 min = vaddr_to_offset(vma, start);
 max = min + (end - start) - 1;

 spin_lock(&uprobes_treelock);
 n = find_node_in_range(inode, min, max);
 spin_unlock(&uprobes_treelock);

 return !!n;
}
