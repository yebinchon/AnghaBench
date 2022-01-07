
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int kref; } ;
struct inode {int dummy; } ;
struct file {struct rchan_buf* private_data; } ;


 int kref_put (int *,int ) ;
 int relay_remove_buf ;

__attribute__((used)) static int relay_file_release(struct inode *inode, struct file *filp)
{
 struct rchan_buf *buf = filp->private_data;
 kref_put(&buf->kref, relay_remove_buf);

 return 0;
}
