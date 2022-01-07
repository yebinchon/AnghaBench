
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_rx_hist {scalar_t__ loss_count; } ;



__attribute__((used)) static inline bool tfrc_rx_hist_loss_pending(const struct tfrc_rx_hist *h)
{
 return h->loss_count > 0;
}
