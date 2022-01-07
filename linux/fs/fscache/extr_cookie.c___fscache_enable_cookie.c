
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {scalar_t__ type; int flags; } ;
typedef int loff_t ;


 int FSCACHE_COOKIE_ENABLED ;
 int FSCACHE_COOKIE_ENABLEMENT_LOCK ;
 scalar_t__ FSCACHE_COOKIE_TYPE_INDEX ;
 int TASK_UNINTERRUPTIBLE ;
 int __fscache_wait_on_invalidate (struct fscache_cookie*) ;
 int _enter (char*,struct fscache_cookie*) ;
 int clear_bit_unlock (int ,int *) ;
 scalar_t__ fscache_acquire_non_index_cookie (struct fscache_cookie*,int ) ;
 int fscache_update_aux (struct fscache_cookie*,void const*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_fscache_enable (struct fscache_cookie*) ;
 int wait_on_bit_lock (int *,int ,int ) ;
 int wake_up_bit (int *,int ) ;

void __fscache_enable_cookie(struct fscache_cookie *cookie,
        const void *aux_data,
        loff_t object_size,
        bool (*can_enable)(void *data),
        void *data)
{
 _enter("%p", cookie);

 trace_fscache_enable(cookie);

 wait_on_bit_lock(&cookie->flags, FSCACHE_COOKIE_ENABLEMENT_LOCK,
    TASK_UNINTERRUPTIBLE);

 fscache_update_aux(cookie, aux_data);

 if (test_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags))
  goto out_unlock;

 if (can_enable && !can_enable(data)) {

 } else if (cookie->type != FSCACHE_COOKIE_TYPE_INDEX) {

  __fscache_wait_on_invalidate(cookie);

  if (fscache_acquire_non_index_cookie(cookie, object_size) == 0)
   set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
 } else {
  set_bit(FSCACHE_COOKIE_ENABLED, &cookie->flags);
 }

out_unlock:
 clear_bit_unlock(FSCACHE_COOKIE_ENABLEMENT_LOCK, &cookie->flags);
 wake_up_bit(&cookie->flags, FSCACHE_COOKIE_ENABLEMENT_LOCK);
}
