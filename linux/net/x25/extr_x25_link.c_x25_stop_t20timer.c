
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int t20timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void x25_stop_t20timer(struct x25_neigh *nb)
{
 del_timer(&nb->t20timer);
}
