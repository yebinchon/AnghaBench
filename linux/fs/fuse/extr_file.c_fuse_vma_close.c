
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct TYPE_2__ {int f_mapping; } ;


 int filemap_write_and_wait (int ) ;

__attribute__((used)) static void fuse_vma_close(struct vm_area_struct *vma)
{
 filemap_write_and_wait(vma->vm_file->f_mapping);
}
