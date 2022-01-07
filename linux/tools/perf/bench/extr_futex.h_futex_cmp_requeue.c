
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int FUTEX_CMP_REQUEUE ;
 int futex (int *,int ,int,int,int *,int ,int) ;

__attribute__((used)) static inline int
futex_cmp_requeue(u_int32_t *uaddr, u_int32_t val, u_int32_t *uaddr2, int nr_wake,
   int nr_requeue, int opflags)
{
 return futex(uaddr, FUTEX_CMP_REQUEUE, nr_wake, nr_requeue, uaddr2,
   val, opflags);
}
