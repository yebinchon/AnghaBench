
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int flags; } ;


 int FSCACHE_COOKIE_INVALIDATING ;
 int TASK_UNINTERRUPTIBLE ;
 int _enter (char*,struct fscache_cookie*) ;
 int _leave (char*) ;
 int wait_on_bit (int *,int ,int ) ;

void __fscache_wait_on_invalidate(struct fscache_cookie *cookie)
{
 _enter("%p", cookie);

 wait_on_bit(&cookie->flags, FSCACHE_COOKIE_INVALIDATING,
      TASK_UNINTERRUPTIBLE);

 _leave("");
}
