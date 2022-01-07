
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct Qdisc {int dummy; } ;


 scalar_t__ CAKE_MAX_TINS ;
 int cake_clear_tin (struct Qdisc*,scalar_t__) ;

__attribute__((used)) static void cake_reset(struct Qdisc *sch)
{
 u32 c;

 for (c = 0; c < CAKE_MAX_TINS; c++)
  cake_clear_tin(sch, c);
}
