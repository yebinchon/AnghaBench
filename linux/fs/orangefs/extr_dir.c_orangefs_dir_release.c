
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_dir_part {struct orangefs_dir_part* next; } ;
struct orangefs_dir {struct orangefs_dir_part* part; } ;
struct inode {int dummy; } ;
struct file {struct orangefs_dir* private_data; } ;


 int kfree (struct orangefs_dir*) ;
 int vfree (struct orangefs_dir_part*) ;

__attribute__((used)) static int orangefs_dir_release(struct inode *inode, struct file *file)
{
 struct orangefs_dir *od = file->private_data;
 struct orangefs_dir_part *part = od->part;
 while (part) {
  struct orangefs_dir_part *next = part->next;
  vfree(part);
  part = next;
 }
 kfree(od);
 return 0;
}
