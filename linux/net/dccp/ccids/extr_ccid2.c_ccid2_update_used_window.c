
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccid2_hc_tx_sock {int tx_expected_wnd; } ;



__attribute__((used)) static void ccid2_update_used_window(struct ccid2_hc_tx_sock *hc, u32 new_wnd)
{
 hc->tx_expected_wnd = (3 * hc->tx_expected_wnd + new_wnd) / 4;
}
