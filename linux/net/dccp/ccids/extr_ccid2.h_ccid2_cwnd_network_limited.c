
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid2_hc_tx_sock {scalar_t__ tx_pipe; scalar_t__ tx_cwnd; } ;



__attribute__((used)) static inline bool ccid2_cwnd_network_limited(struct ccid2_hc_tx_sock *hc)
{
 return hc->tx_pipe >= hc->tx_cwnd;
}
