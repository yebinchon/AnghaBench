
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_notifier {int type; int subtype; int source; int hash; } ;
typedef int __u32 ;


 int rx_callbacks ;

__attribute__((used)) static void dummyfn(void *ctx, int cpu, void *data, __u32 size)
{
 struct tcp_notifier *t = data;

 if (t->type != 0xde || t->subtype != 0xad ||
     t->source != 0xbe || t->hash != 0xef)
  return;
 rx_callbacks++;
}
