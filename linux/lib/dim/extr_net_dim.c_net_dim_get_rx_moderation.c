
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct dim_cq_moder {size_t cq_period_mode; } ;


 struct dim_cq_moder** rx_profile ;

struct dim_cq_moder
net_dim_get_rx_moderation(u8 cq_period_mode, int ix)
{
 struct dim_cq_moder cq_moder = rx_profile[cq_period_mode][ix];

 cq_moder.cq_period_mode = cq_period_mode;
 return cq_moder;
}
