
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int put_net (int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int single_release_net(struct inode *ino, struct file *f)
{
 struct seq_file *seq = f->private_data;
 put_net(seq->private);
 return single_release(ino, f);
}
