#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct seg6_lwt {int /*<<< orphan*/  cache; } ;
struct dst_entry {int /*<<< orphan*/  dev; int /*<<< orphan*/  error; int /*<<< orphan*/  lwtstate; } ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dst_entry*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct sk_buff*) ; 
 struct seg6_lwt* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb)
{
	struct dst_entry *orig_dst = FUNC12(skb);
	struct dst_entry *dst = NULL;
	struct seg6_lwt *slwt;
	int err;

	err = FUNC9(skb);
	if (FUNC15(err)) {
		FUNC6(skb);
		return err;
	}

	slwt = FUNC10(orig_dst->lwtstate);

	FUNC7();
	dst = FUNC1(&slwt->cache);
	FUNC8();

	FUNC13(skb);

	if (!dst) {
		FUNC4(skb);
		dst = FUNC12(skb);
		if (!dst->error) {
			FUNC7();
			FUNC2(&slwt->cache, dst,
					  &FUNC5(skb)->saddr);
			FUNC8();
		}
	} else {
		FUNC14(skb, dst);
	}

	err = FUNC11(skb, FUNC0(dst->dev));
	if (FUNC15(err))
		return err;

	return FUNC3(skb);
}