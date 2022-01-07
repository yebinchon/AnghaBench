
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {int rx_state; } ;
typedef enum ccid3_hc_rx_states { ____Placeholder_ccid3_hc_rx_states } ccid3_hc_rx_states ;


 int WARN_ON (int) ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,int ,struct sock*,int ,int ) ;
 int ccid3_rx_state_name (int) ;
 int dccp_role (struct sock*) ;

__attribute__((used)) static void ccid3_hc_rx_set_state(struct sock *sk,
      enum ccid3_hc_rx_states state)
{
 struct ccid3_hc_rx_sock *hc = ccid3_hc_rx_sk(sk);
 enum ccid3_hc_rx_states oldstate = hc->rx_state;

 ccid3_pr_debug("%s(%p) %-8.8s -> %s\n",
         dccp_role(sk), sk, ccid3_rx_state_name(oldstate),
         ccid3_rx_state_name(state));
 WARN_ON(state == oldstate);
 hc->rx_state = state;
}
