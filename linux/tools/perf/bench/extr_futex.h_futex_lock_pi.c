
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct timespec {int dummy; } ;


 int FUTEX_LOCK_PI ;
 int futex (int *,int ,int ,struct timespec*,int *,int ,int) ;

__attribute__((used)) static inline int
futex_lock_pi(u_int32_t *uaddr, struct timespec *timeout, int opflags)
{
 return futex(uaddr, FUTEX_LOCK_PI, 0, timeout, ((void*)0), 0, opflags);
}
