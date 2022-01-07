
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmpxchg (int*,int ,int) ;
 int pr_info (char*) ;
 int static_branch_enable (int *) ;
 int static_branch_unlikely (int *) ;
 int tcp_tx_delay_enabled ;

__attribute__((used)) static void tcp_enable_tx_delay(void)
{
 if (!static_branch_unlikely(&tcp_tx_delay_enabled)) {
  static int __tcp_tx_delay_enabled = 0;

  if (cmpxchg(&__tcp_tx_delay_enabled, 0, 1) == 0) {
   static_branch_enable(&tcp_tx_delay_enabled);
   pr_info("TCP_TX_DELAY enabled\n");
  }
 }
}
