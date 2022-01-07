
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tfrc_rx_hist_entry {int dummy; } ;
struct tfrc_rx_hist {struct tfrc_rx_hist_entry** ring; } ;


 size_t tfrc_rx_hist_index (struct tfrc_rx_hist const*,int const) ;

__attribute__((used)) static inline struct tfrc_rx_hist_entry *
   tfrc_rx_hist_entry(const struct tfrc_rx_hist *h, const u8 n)
{
 return h->ring[tfrc_rx_hist_index(h, n)];
}
