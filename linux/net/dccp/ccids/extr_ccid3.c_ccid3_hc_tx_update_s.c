
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ccid3_hc_tx_sock {scalar_t__ tx_s; } ;


 int ccid3_update_send_interval (struct ccid3_hc_tx_sock*) ;
 scalar_t__ tfrc_ewma (scalar_t__,int,int) ;

__attribute__((used)) static inline void ccid3_hc_tx_update_s(struct ccid3_hc_tx_sock *hc, int len)
{
 const u16 old_s = hc->tx_s;

 hc->tx_s = tfrc_ewma(hc->tx_s, len, 9);

 if (hc->tx_s != old_s)
  ccid3_update_send_interval(hc);
}
