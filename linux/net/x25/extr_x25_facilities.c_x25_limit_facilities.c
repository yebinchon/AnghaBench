
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int extended; } ;
struct x25_facilities {int winsize_in; int winsize_out; } ;


 int pr_debug (char*) ;

void x25_limit_facilities(struct x25_facilities *facilities,
     struct x25_neigh *nb)
{

 if (!nb->extended) {
  if (facilities->winsize_in > 7) {
   pr_debug("incoming winsize limited to 7\n");
   facilities->winsize_in = 7;
  }
  if (facilities->winsize_out > 7) {
   facilities->winsize_out = 7;
   pr_debug("outgoing winsize limited to 7\n");
  }
 }
}
