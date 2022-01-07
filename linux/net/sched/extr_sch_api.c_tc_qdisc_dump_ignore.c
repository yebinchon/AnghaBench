
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int flags; } ;


 int TCQ_F_BUILTIN ;
 int TCQ_F_INVISIBLE ;

__attribute__((used)) static bool tc_qdisc_dump_ignore(struct Qdisc *q, bool dump_invisible)
{
 if (q->flags & TCQ_F_BUILTIN)
  return 1;
 if ((q->flags & TCQ_F_INVISIBLE) && !dump_invisible)
  return 1;

 return 0;
}
