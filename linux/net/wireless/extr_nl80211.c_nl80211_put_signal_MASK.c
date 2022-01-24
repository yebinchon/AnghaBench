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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IEEE80211_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct sk_buff *msg, u8 mask, s8 *signal,
			       int id)
{
	void *attr;
	int i = 0;

	if (!mask)
		return true;

	attr = FUNC2(msg, id);
	if (!attr)
		return false;

	for (i = 0; i < IEEE80211_MAX_CHAINS; i++) {
		if (!(mask & FUNC0(i)))
			continue;

		if (FUNC3(msg, i, signal[i]))
			return false;
	}

	FUNC1(msg, attr);

	return true;
}