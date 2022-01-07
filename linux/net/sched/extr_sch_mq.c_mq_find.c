
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned int TC_H_MIN (int ) ;
 int mq_queue_get (struct Qdisc*,unsigned int) ;

__attribute__((used)) static unsigned long mq_find(struct Qdisc *sch, u32 classid)
{
 unsigned int ntx = TC_H_MIN(classid);

 if (!mq_queue_get(sch, ntx))
  return 0;
 return ntx;
}
