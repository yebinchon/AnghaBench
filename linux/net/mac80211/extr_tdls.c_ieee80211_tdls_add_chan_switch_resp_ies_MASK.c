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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,struct sk_buff*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_sub_if_data *sdata,
					struct sk_buff *skb, const u8 *peer,
					u16 status_code, bool initiator,
					const u8 *extra_ies,
					size_t extra_ies_len)
{
	if (status_code == 0)
		FUNC0(sdata, skb, peer, initiator);

	if (extra_ies_len)
		FUNC1(skb, extra_ies, extra_ies_len);
}