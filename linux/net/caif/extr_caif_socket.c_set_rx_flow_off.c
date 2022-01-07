
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caifsock {int flow_state; } ;


 int RX_FLOW_ON_BIT ;
 int clear_bit (int ,void*) ;

__attribute__((used)) static void set_rx_flow_off(struct caifsock *cf_sk)
{
  clear_bit(RX_FLOW_ON_BIT,
   (void *) &cf_sk->flow_state);
}
