
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct cred* real_cred; struct cred* cred; int * cached_requested_key; } ;
struct cred {TYPE_1__* user; int * process_keyring; int * thread_keyring; int usage; } ;
struct TYPE_2__ {int processes; } ;


 unsigned long CLONE_NEWUSER ;
 unsigned long CLONE_THREAD ;
 int ENOMEM ;
 int alter_cred_subscribers (struct cred*,int) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int create_user_ns (struct cred*) ;
 void* get_cred (struct cred*) ;
 int install_thread_keyring_to_cred (struct cred*) ;
 int kdebug (char*,struct cred*,int ,int ) ;
 int key_put (int *) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;
 int read_cred_subscribers (struct cred*) ;
 int validate_creds (struct cred*) ;

int copy_creds(struct task_struct *p, unsigned long clone_flags)
{
 struct cred *new;
 int ret;





 if (



  clone_flags & CLONE_THREAD
     ) {
  p->real_cred = get_cred(p->cred);
  get_cred(p->cred);
  alter_cred_subscribers(p->cred, 2);
  kdebug("share_creds(%p{%d,%d})",
         p->cred, atomic_read(&p->cred->usage),
         read_cred_subscribers(p->cred));
  atomic_inc(&p->cred->user->processes);
  return 0;
 }

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 if (clone_flags & CLONE_NEWUSER) {
  ret = create_user_ns(new);
  if (ret < 0)
   goto error_put;
 }
 atomic_inc(&new->user->processes);
 p->cred = p->real_cred = get_cred(new);
 alter_cred_subscribers(new, 2);
 validate_creds(new);
 return 0;

error_put:
 put_cred(new);
 return ret;
}
