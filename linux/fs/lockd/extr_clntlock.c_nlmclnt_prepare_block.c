
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_wait {int b_list; int b_status; int b_wait; struct file_lock* b_lock; struct nlm_host* b_host; } ;
struct nlm_host {int dummy; } ;
struct file_lock {int dummy; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct nlm_wait* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int nlm_blocked ;
 int nlm_blocked_lock ;
 int nlm_lck_blocked ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nlm_wait *nlmclnt_prepare_block(struct nlm_host *host, struct file_lock *fl)
{
 struct nlm_wait *block;

 block = kmalloc(sizeof(*block), GFP_KERNEL);
 if (block != ((void*)0)) {
  block->b_host = host;
  block->b_lock = fl;
  init_waitqueue_head(&block->b_wait);
  block->b_status = nlm_lck_blocked;

  spin_lock(&nlm_blocked_lock);
  list_add(&block->b_list, &nlm_blocked);
  spin_unlock(&nlm_blocked_lock);
 }
 return block;
}
