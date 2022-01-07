
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_timeval {int tv_usec; int tv_sec; } ;
typedef int ktime_t ;


 int NSEC_PER_USEC ;
 int ktime_set (int ,int) ;

__attribute__((used)) static inline ktime_t bcm_timeval_to_ktime(struct bcm_timeval tv)
{
 return ktime_set(tv.tv_sec, tv.tv_usec * NSEC_PER_USEC);
}
