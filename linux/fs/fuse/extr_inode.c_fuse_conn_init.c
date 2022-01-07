
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct fuse_iqueue_ops {int dummy; } ;
struct fuse_conn {int connected; int max_pages; int user_ns; int pid_ns; int scramble_key; int attr_version; scalar_t__ initialized; scalar_t__ blocked; int polled_files; int khctr; int congestion_threshold; int max_background; int num_waiting; int devices; int entry; int bg_queue; int iq; int blocked_waitq; int dev_count; int count; int killsb; int bg_lock; int lock; } ;


 int FUSE_DEFAULT_CONGESTION_THRESHOLD ;
 int FUSE_DEFAULT_MAX_BACKGROUND ;
 int FUSE_DEFAULT_MAX_PAGES_PER_REQ ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int atomic64_set (int *,int) ;
 int atomic_set (int *,int) ;
 int current ;
 int fuse_iqueue_init (int *,struct fuse_iqueue_ops const*,void*) ;
 int get_pid_ns (int ) ;
 int get_random_bytes (int *,int) ;
 int get_user_ns (struct user_namespace*) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct fuse_conn*,int ,int) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int task_active_pid_ns (int ) ;

void fuse_conn_init(struct fuse_conn *fc, struct user_namespace *user_ns,
      const struct fuse_iqueue_ops *fiq_ops, void *fiq_priv)
{
 memset(fc, 0, sizeof(*fc));
 spin_lock_init(&fc->lock);
 spin_lock_init(&fc->bg_lock);
 init_rwsem(&fc->killsb);
 refcount_set(&fc->count, 1);
 atomic_set(&fc->dev_count, 1);
 init_waitqueue_head(&fc->blocked_waitq);
 fuse_iqueue_init(&fc->iq, fiq_ops, fiq_priv);
 INIT_LIST_HEAD(&fc->bg_queue);
 INIT_LIST_HEAD(&fc->entry);
 INIT_LIST_HEAD(&fc->devices);
 atomic_set(&fc->num_waiting, 0);
 fc->max_background = FUSE_DEFAULT_MAX_BACKGROUND;
 fc->congestion_threshold = FUSE_DEFAULT_CONGESTION_THRESHOLD;
 atomic64_set(&fc->khctr, 0);
 fc->polled_files = RB_ROOT;
 fc->blocked = 0;
 fc->initialized = 0;
 fc->connected = 1;
 atomic64_set(&fc->attr_version, 1);
 get_random_bytes(&fc->scramble_key, sizeof(fc->scramble_key));
 fc->pid_ns = get_pid_ns(task_active_pid_ns(current));
 fc->user_ns = get_user_ns(user_ns);
 fc->max_pages = FUSE_DEFAULT_MAX_PAGES_PER_REQ;
}
