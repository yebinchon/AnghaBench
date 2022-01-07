
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 int BUG_ON (int) ;
 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;
 int RUSAGE_SELF ;
 int getrusage (int ,struct rusage*) ;

__attribute__((used)) static u64 get_cpu_usage_nsec_parent(void)
{
 struct rusage ru;
 u64 sum;
 int err;

 err = getrusage(RUSAGE_SELF, &ru);
 BUG_ON(err);

 sum = ru.ru_utime.tv_sec * NSEC_PER_SEC + ru.ru_utime.tv_usec * NSEC_PER_USEC;
 sum += ru.ru_stime.tv_sec * NSEC_PER_SEC + ru.ru_stime.tv_usec * NSEC_PER_USEC;

 return sum;
}
