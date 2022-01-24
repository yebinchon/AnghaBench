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
struct sta_info {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_STA_MFP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(__le16 fc, struct sta_info *sta,
			     struct sk_buff *skb)
{
	if (!FUNC0(fc))
		return 0;

	if (sta == NULL || !FUNC2(sta, WLAN_STA_MFP))
		return 0;

	if (!FUNC1(skb))
		return 0;

	return 1;
}