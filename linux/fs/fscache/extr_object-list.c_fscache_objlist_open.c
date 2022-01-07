
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fscache_objlist_data {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 struct fscache_objlist_data* __seq_open_private (struct file*,int *,int) ;
 int fscache_objlist_config (struct fscache_objlist_data*) ;
 int fscache_objlist_ops ;

__attribute__((used)) static int fscache_objlist_open(struct inode *inode, struct file *file)
{
 struct fscache_objlist_data *data;

 data = __seq_open_private(file, &fscache_objlist_ops, sizeof(*data));
 if (!data)
  return -ENOMEM;


 fscache_objlist_config(data);

 return 0;
}
