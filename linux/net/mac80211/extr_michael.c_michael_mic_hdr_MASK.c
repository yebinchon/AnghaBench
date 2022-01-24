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
struct michael_mic_ctx {int l; int r; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int const*) ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 int* FUNC3 (struct ieee80211_hdr*) ; 
 int FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct michael_mic_ctx*,int) ; 

__attribute__((used)) static void FUNC7(struct michael_mic_ctx *mctx, const u8 *key,
			    struct ieee80211_hdr *hdr)
{
	u8 *da, *sa, tid;

	da = FUNC2(hdr);
	sa = FUNC3(hdr);
	if (FUNC5(hdr->frame_control))
		tid = FUNC4(hdr);
	else
		tid = 0;

	mctx->l = FUNC1(key);
	mctx->r = FUNC1(key + 4);

	/*
	 * A pseudo header (DA, SA, Priority, 0, 0, 0) is used in Michael MIC
	 * calculation, but it is _not_ transmitted
	 */
	FUNC6(mctx, FUNC1(da));
	FUNC6(mctx, FUNC0(&da[4]) |
			    (FUNC0(sa) << 16));
	FUNC6(mctx, FUNC1(&sa[2]));
	FUNC6(mctx, tid);
}