
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_open_node {int files; int poll; int event; int refcnt; } ;
struct kernfs_open_file {int list; } ;
struct TYPE_2__ {struct kernfs_open_node* open; } ;
struct kernfs_node {TYPE_1__ attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kernfs_open_file_mutex ;
 int kernfs_open_node_lock ;
 int kfree (struct kernfs_open_node*) ;
 struct kernfs_open_node* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int kernfs_get_open_node(struct kernfs_node *kn,
    struct kernfs_open_file *of)
{
 struct kernfs_open_node *on, *new_on = ((void*)0);

 retry:
 mutex_lock(&kernfs_open_file_mutex);
 spin_lock_irq(&kernfs_open_node_lock);

 if (!kn->attr.open && new_on) {
  kn->attr.open = new_on;
  new_on = ((void*)0);
 }

 on = kn->attr.open;
 if (on) {
  atomic_inc(&on->refcnt);
  list_add_tail(&of->list, &on->files);
 }

 spin_unlock_irq(&kernfs_open_node_lock);
 mutex_unlock(&kernfs_open_file_mutex);

 if (on) {
  kfree(new_on);
  return 0;
 }


 new_on = kmalloc(sizeof(*new_on), GFP_KERNEL);
 if (!new_on)
  return -ENOMEM;

 atomic_set(&new_on->refcnt, 0);
 atomic_set(&new_on->event, 1);
 init_waitqueue_head(&new_on->poll);
 INIT_LIST_HEAD(&new_on->files);
 goto retry;
}
