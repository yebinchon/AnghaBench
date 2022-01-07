
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sta_info {int* tid_seq; } ;
typedef int __le16 ;


 int IEEE80211_SCTL_SEQ ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static __le16 ieee80211_tx_next_seq(struct sta_info *sta, int tid)
{
 u16 *seq = &sta->tid_seq[tid];
 __le16 ret = cpu_to_le16(*seq);


 *seq = (*seq + 0x10) & IEEE80211_SCTL_SEQ;

 return ret;
}
