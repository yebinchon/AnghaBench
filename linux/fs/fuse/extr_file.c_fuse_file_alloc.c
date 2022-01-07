
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fuse_file {int kh; int poll_wait; int polled_node; int count; TYPE_1__ readdir; int write_entry; void* release_args; struct fuse_conn* fc; } ;
struct fuse_conn {int khctr; } ;


 int GFP_KERNEL_ACCOUNT ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int atomic64_inc_return (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct fuse_file*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 scalar_t__ unlikely (int) ;

struct fuse_file *fuse_file_alloc(struct fuse_conn *fc)
{
 struct fuse_file *ff;

 ff = kzalloc(sizeof(struct fuse_file), GFP_KERNEL_ACCOUNT);
 if (unlikely(!ff))
  return ((void*)0);

 ff->fc = fc;
 ff->release_args = kzalloc(sizeof(*ff->release_args),
       GFP_KERNEL_ACCOUNT);
 if (!ff->release_args) {
  kfree(ff);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&ff->write_entry);
 mutex_init(&ff->readdir.lock);
 refcount_set(&ff->count, 1);
 RB_CLEAR_NODE(&ff->polled_node);
 init_waitqueue_head(&ff->poll_wait);

 ff->kh = atomic64_inc_return(&fc->khctr);

 return ff;
}
