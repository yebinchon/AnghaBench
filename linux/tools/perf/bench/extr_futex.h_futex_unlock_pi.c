
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int FUTEX_UNLOCK_PI ;
 int futex (int *,int ,int ,int *,int *,int ,int) ;

__attribute__((used)) static inline int
futex_unlock_pi(u_int32_t *uaddr, int opflags)
{
 return futex(uaddr, FUTEX_UNLOCK_PI, 0, ((void*)0), ((void*)0), 0, opflags);
}
