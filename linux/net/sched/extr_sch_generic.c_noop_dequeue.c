
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static struct sk_buff *noop_dequeue(struct Qdisc *qdisc)
{
 return ((void*)0);
}
