
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int dummy; } ;
struct eventpoll {struct user_struct* user; int ovflist; int rbr; int rdllist; int poll_wait; int wq; int lock; int mtx; } ;


 int ENOMEM ;
 int EP_UNACTIVE_PTR ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int free_uid (struct user_struct*) ;
 struct user_struct* get_current_user () ;
 int init_waitqueue_head (int *) ;
 struct eventpoll* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ep_alloc(struct eventpoll **pep)
{
 int error;
 struct user_struct *user;
 struct eventpoll *ep;

 user = get_current_user();
 error = -ENOMEM;
 ep = kzalloc(sizeof(*ep), GFP_KERNEL);
 if (unlikely(!ep))
  goto free_uid;

 mutex_init(&ep->mtx);
 rwlock_init(&ep->lock);
 init_waitqueue_head(&ep->wq);
 init_waitqueue_head(&ep->poll_wait);
 INIT_LIST_HEAD(&ep->rdllist);
 ep->rbr = RB_ROOT_CACHED;
 ep->ovflist = EP_UNACTIVE_PTR;
 ep->user = user;

 *pep = ep;

 return 0;

free_uid:
 free_uid(user);
 return error;
}
