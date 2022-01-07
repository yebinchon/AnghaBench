
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caifsock {int flow_state; } ;


 int RX_FLOW_ON_BIT ;
 int test_bit (int ,void*) ;

__attribute__((used)) static int rx_flow_is_on(struct caifsock *cf_sk)
{
 return test_bit(RX_FLOW_ON_BIT,
   (void *) &cf_sk->flow_state);
}
