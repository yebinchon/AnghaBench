#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tid_ampdu_rx {int reorder_buf_filtered; struct sk_buff_head* reorder_buf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct ieee80211_rx_status* FUNC1 (struct sk_buff*) ; 
 int RX_FLAG_AMSDU_MORE ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 

__attribute__((used)) static inline bool FUNC3(struct tid_ampdu_rx *tid_agg_rx,
					      int index)
{
	struct sk_buff_head *frames = &tid_agg_rx->reorder_buf[index];
	struct sk_buff *tail = FUNC2(frames);
	struct ieee80211_rx_status *status;

	if (tid_agg_rx->reorder_buf_filtered & FUNC0(index))
		return true;

	if (!tail)
		return false;

	status = FUNC1(tail);
	if (status->flag & RX_FLAG_AMSDU_MORE)
		return false;

	return true;
}