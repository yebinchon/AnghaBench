
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tfrc_rx_hist_entry {int tfrchrx_ccval; int tfrchrx_seqno; } ;
struct tfrc_loss_interval {int li_ccval; scalar_t__ li_is_closed; int li_seqno; } ;


 int SUB16 (int ,int ) ;
 scalar_t__ dccp_delta_seqno (int ,int ) ;

__attribute__((used)) static inline u8 tfrc_lh_is_new_loss(struct tfrc_loss_interval *cur,
         struct tfrc_rx_hist_entry *new_loss)
{
 return dccp_delta_seqno(cur->li_seqno, new_loss->tfrchrx_seqno) > 0 &&
  (cur->li_is_closed || SUB16(new_loss->tfrchrx_ccval, cur->li_ccval) > 4);
}
