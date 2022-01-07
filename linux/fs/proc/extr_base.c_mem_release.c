
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct mm_struct* private_data; } ;


 int mmdrop (struct mm_struct*) ;

__attribute__((used)) static int mem_release(struct inode *inode, struct file *file)
{
 struct mm_struct *mm = file->private_data;
 if (mm)
  mmdrop(mm);
 return 0;
}
