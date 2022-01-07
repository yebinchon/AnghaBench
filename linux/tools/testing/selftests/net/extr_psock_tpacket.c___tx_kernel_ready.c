
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __v1_tx_kernel_ready (void*) ;
 int __v2_tx_kernel_ready (void*) ;
 int __v3_tx_kernel_ready (void*) ;
 int bug_on (int) ;

__attribute__((used)) static inline int __tx_kernel_ready(void *base, int version)
{
 switch (version) {
 case 130:
  return __v1_tx_kernel_ready(base);
 case 129:
  return __v2_tx_kernel_ready(base);
 case 128:
  return __v3_tx_kernel_ready(base);
 default:
  bug_on(1);
  return 0;
 }
}
