
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct inode {int i_private; } ;
struct file {scalar_t__ private_data; } ;
struct aa_loaddata {int dummy; } ;


 int AA_BUG (int) ;
 int ENOENT ;
 struct aa_loaddata* __aa_get_loaddata (int ) ;
 int aa_put_loaddata (struct aa_loaddata*) ;
 int single_open (struct file*,int (*) (struct seq_file*,void*),struct aa_loaddata*) ;

__attribute__((used)) static int seq_rawdata_open(struct inode *inode, struct file *file,
       int (*show)(struct seq_file *, void *))
{
 struct aa_loaddata *data = __aa_get_loaddata(inode->i_private);
 int error;

 if (!data)

  return -ENOENT;

 error = single_open(file, show, data);
 if (error) {
  AA_BUG(file->private_data &&
         ((struct seq_file *)file->private_data)->private);
  aa_put_loaddata(data);
 }

 return error;
}
