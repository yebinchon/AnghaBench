
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int usage; } ;
typedef enum fscache_cookie_trace { ____Placeholder_fscache_cookie_trace } fscache_cookie_trace ;


 int atomic_inc_return (int *) ;
 int trace_fscache_cookie (struct fscache_cookie*,int,int) ;

__attribute__((used)) static inline void fscache_cookie_get(struct fscache_cookie *cookie,
          enum fscache_cookie_trace where)
{
 int usage = atomic_inc_return(&cookie->usage);

 trace_fscache_cookie(cookie, where, usage);
}
