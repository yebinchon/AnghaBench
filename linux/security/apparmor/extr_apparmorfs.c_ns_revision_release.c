
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct aa_revision* private_data; } ;
struct aa_revision {int ns; } ;


 int aa_put_ns (int ) ;
 int kfree (struct aa_revision*) ;

__attribute__((used)) static int ns_revision_release(struct inode *inode, struct file *file)
{
 struct aa_revision *rev = file->private_data;

 if (rev) {
  aa_put_ns(rev->ns);
  kfree(rev);
 }

 return 0;
}
