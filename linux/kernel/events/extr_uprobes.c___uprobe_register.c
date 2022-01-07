
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uprobe_consumer {int ret_handler; int handler; } ;
struct uprobe {int register_rwsem; } ;
struct inode {TYPE_2__* i_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {TYPE_1__* a_ops; } ;
struct TYPE_3__ {int readpage; } ;


 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct uprobe*) ;
 int PTR_ERR (struct uprobe*) ;
 int __uprobe_unregister (struct uprobe*,struct uprobe_consumer*) ;
 struct uprobe* alloc_uprobe (struct inode*,scalar_t__,scalar_t__) ;
 int consumer_add (struct uprobe*,struct uprobe_consumer*) ;
 int down_write (int *) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ likely (int ) ;
 int put_uprobe (struct uprobe*) ;
 int register_for_each_vma (struct uprobe*,struct uprobe_consumer*) ;
 int shmem_mapping (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;
 int uprobe_is_active (struct uprobe*) ;

__attribute__((used)) static int __uprobe_register(struct inode *inode, loff_t offset,
        loff_t ref_ctr_offset, struct uprobe_consumer *uc)
{
 struct uprobe *uprobe;
 int ret;


 if (!uc->handler && !uc->ret_handler)
  return -EINVAL;


 if (!inode->i_mapping->a_ops->readpage && !shmem_mapping(inode->i_mapping))
  return -EIO;

 if (offset > i_size_read(inode))
  return -EINVAL;

 retry:
 uprobe = alloc_uprobe(inode, offset, ref_ctr_offset);
 if (!uprobe)
  return -ENOMEM;
 if (IS_ERR(uprobe))
  return PTR_ERR(uprobe);





 down_write(&uprobe->register_rwsem);
 ret = -EAGAIN;
 if (likely(uprobe_is_active(uprobe))) {
  consumer_add(uprobe, uc);
  ret = register_for_each_vma(uprobe, uc);
  if (ret)
   __uprobe_unregister(uprobe, uc);
 }
 up_write(&uprobe->register_rwsem);
 put_uprobe(uprobe);

 if (unlikely(ret == -EAGAIN))
  goto retry;
 return ret;
}
