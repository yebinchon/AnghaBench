
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __v1_tx_user_ready (void*) ;
 int __v2_tx_user_ready (void*) ;
 int __v3_tx_user_ready (void*) ;

__attribute__((used)) static inline void __tx_user_ready(void *base, int version)
{
 switch (version) {
 case 130:
  __v1_tx_user_ready(base);
  break;
 case 129:
  __v2_tx_user_ready(base);
  break;
 case 128:
  __v3_tx_user_ready(base);
  break;
 }
}
