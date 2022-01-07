
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msr_hwp_request {int hwp_min; int hwp_max; int hwp_desired; int hwp_epp; int hwp_window; } ;


 int printf (char*,...) ;

void print_hwp_request_pkg(int pkg, struct msr_hwp_request *h, char *str)
{
 printf("pkg%d: ", pkg);

 if (str)
  printf("%s", str);

 printf("HWP_REQ_PKG: min %d max %d des %d epp %d window 0x%x (%d*10^%dus)\n",
  h->hwp_min, h->hwp_max, h->hwp_desired, h->hwp_epp,
  h->hwp_window, h->hwp_window & 0x7F, (h->hwp_window >> 7) & 0x7);
}
