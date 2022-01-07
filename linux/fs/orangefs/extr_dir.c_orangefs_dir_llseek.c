
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_dir_part {struct orangefs_dir_part* next; } ;
struct orangefs_dir {int end; struct orangefs_dir_part* part; int token; } ;
struct file {struct orangefs_dir* private_data; } ;
typedef int loff_t ;


 int ORANGEFS_ITERATE_START ;
 int PART_SHIFT ;
 int default_llseek (struct file*,int,int) ;
 int vfree (struct orangefs_dir_part*) ;

__attribute__((used)) static loff_t orangefs_dir_llseek(struct file *file, loff_t offset,
    int whence)
{
 struct orangefs_dir *od = file->private_data;




 if (!whence && offset < od->end) {
  struct orangefs_dir_part *part = od->part;
  while (part) {
   struct orangefs_dir_part *next = part->next;
   vfree(part);
   part = next;
  }
  od->token = ORANGEFS_ITERATE_START;
  od->part = ((void*)0);
  od->end = 1 << PART_SHIFT;
 }
 return default_llseek(file, offset, whence);
}
