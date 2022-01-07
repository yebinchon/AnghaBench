
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int picos_per_byte; } ;


 int atomic64_read (int *) ;
 int div_u64 (int,int) ;

__attribute__((used)) static int length_to_duration(struct taprio_sched *q, int len)
{
 return div_u64(len * atomic64_read(&q->picos_per_byte), 1000);
}
