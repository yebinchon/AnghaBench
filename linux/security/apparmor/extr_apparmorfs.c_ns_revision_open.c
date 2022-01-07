
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {struct aa_revision* private_data; } ;
struct aa_revision {scalar_t__ ns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ aa_get_current_ns () ;
 scalar_t__ aa_get_ns (int ) ;
 struct aa_revision* kzalloc (int,int ) ;

__attribute__((used)) static int ns_revision_open(struct inode *inode, struct file *file)
{
 struct aa_revision *rev = kzalloc(sizeof(*rev), GFP_KERNEL);

 if (!rev)
  return -ENOMEM;

 rev->ns = aa_get_ns(inode->i_private);
 if (!rev->ns)
  rev->ns = aa_get_current_ns();
 file->private_data = rev;

 return 0;
}
