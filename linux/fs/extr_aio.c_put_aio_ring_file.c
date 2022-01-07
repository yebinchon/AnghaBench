
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {struct file* aio_ring_file; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int private_lock; int * private_data; } ;


 int file_inode (struct file*) ;
 int fput (struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_setsize (int ,int ) ;

__attribute__((used)) static void put_aio_ring_file(struct kioctx *ctx)
{
 struct file *aio_ring_file = ctx->aio_ring_file;
 struct address_space *i_mapping;

 if (aio_ring_file) {
  truncate_setsize(file_inode(aio_ring_file), 0);


  i_mapping = aio_ring_file->f_mapping;
  spin_lock(&i_mapping->private_lock);
  i_mapping->private_data = ((void*)0);
  ctx->aio_ring_file = ((void*)0);
  spin_unlock(&i_mapping->private_lock);

  fput(aio_ring_file);
 }
}
