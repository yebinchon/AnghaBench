
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int fu_rcuhead; } ;
struct file {int f_flags; int f_mode; int f_pos_lock; int f_lock; TYPE_2__ f_owner; int f_count; TYPE_1__ f_u; int f_cred; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 struct file* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int OPEN_FMODE (int) ;
 int atomic_long_set (int *,int) ;
 int eventpoll_init_file (struct file*) ;
 int file_free_rcu (int *) ;
 int filp_cachep ;
 int get_cred (struct cred const*) ;
 struct file* kmem_cache_zalloc (int ,int ) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 int security_file_alloc (struct file*) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct file *__alloc_file(int flags, const struct cred *cred)
{
 struct file *f;
 int error;

 f = kmem_cache_zalloc(filp_cachep, GFP_KERNEL);
 if (unlikely(!f))
  return ERR_PTR(-ENOMEM);

 f->f_cred = get_cred(cred);
 error = security_file_alloc(f);
 if (unlikely(error)) {
  file_free_rcu(&f->f_u.fu_rcuhead);
  return ERR_PTR(error);
 }

 atomic_long_set(&f->f_count, 1);
 rwlock_init(&f->f_owner.lock);
 spin_lock_init(&f->f_lock);
 mutex_init(&f->f_pos_lock);
 eventpoll_init_file(f);
 f->f_flags = flags;
 f->f_mode = OPEN_FMODE(flags);


 return f;
}
