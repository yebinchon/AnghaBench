
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct rchan_buf {int dummy; } ;
struct file {struct rchan_buf* private_data; } ;


 int relay_mmap_buf (struct rchan_buf*,struct vm_area_struct*) ;

__attribute__((used)) static int relay_file_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct rchan_buf *buf = filp->private_data;
 return relay_mmap_buf(buf, vma);
}
