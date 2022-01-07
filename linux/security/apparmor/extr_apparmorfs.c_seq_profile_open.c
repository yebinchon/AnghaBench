
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int * private_data; } ;
struct aa_proxy {int dummy; } ;


 struct aa_proxy* aa_get_proxy (int ) ;
 int aa_put_proxy (struct aa_proxy*) ;
 int single_open (struct file*,int (*) (struct seq_file*,void*),struct aa_proxy*) ;

__attribute__((used)) static int seq_profile_open(struct inode *inode, struct file *file,
       int (*show)(struct seq_file *, void *))
{
 struct aa_proxy *proxy = aa_get_proxy(inode->i_private);
 int error = single_open(file, show, proxy);

 if (error) {
  file->private_data = ((void*)0);
  aa_put_proxy(proxy);
 }

 return error;
}
