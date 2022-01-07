
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int FUTEX_WAKE ;
 int futex (int *,int ,int,int *,int *,int ,int) ;

__attribute__((used)) static inline int
futex_wake(u_int32_t *uaddr, int nr_wake, int opflags)
{
 return futex(uaddr, FUTEX_WAKE, nr_wake, ((void*)0), ((void*)0), 0, opflags);
}
