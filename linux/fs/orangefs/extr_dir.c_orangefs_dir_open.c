
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_dir {int end; scalar_t__ error; int * part; int token; } ;
struct inode {int dummy; } ;
struct file {struct orangefs_dir* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ORANGEFS_ITERATE_START ;
 int PART_SHIFT ;
 struct orangefs_dir* kmalloc (int,int ) ;

__attribute__((used)) static int orangefs_dir_open(struct inode *inode, struct file *file)
{
 struct orangefs_dir *od;
 file->private_data = kmalloc(sizeof(struct orangefs_dir),
     GFP_KERNEL);
 if (!file->private_data)
  return -ENOMEM;
 od = file->private_data;
 od->token = ORANGEFS_ITERATE_START;
 od->part = ((void*)0);
 od->end = 1 << PART_SHIFT;
 od->error = 0;
 return 0;
}
