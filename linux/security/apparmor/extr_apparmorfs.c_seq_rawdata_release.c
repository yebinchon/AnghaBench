
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int aa_put_loaddata (int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int seq_rawdata_release(struct inode *inode, struct file *file)
{
 struct seq_file *seq = (struct seq_file *) file->private_data;

 if (seq)
  aa_put_loaddata(seq->private);

 return single_release(inode, file);
}
