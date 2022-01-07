
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int snd_compr_mmap(struct file *f, struct vm_area_struct *vma)
{
 return -ENXIO;
}
