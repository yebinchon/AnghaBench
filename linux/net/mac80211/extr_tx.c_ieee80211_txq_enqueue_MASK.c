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
typedef  int /*<<< orphan*/  u32 ;
struct fq_tin {int dummy; } ;
struct txq_info {struct fq_tin tin; } ;
struct sk_buff {int dummy; } ;
struct fq {int /*<<< orphan*/  lock; } ;
struct ieee80211_local {struct fq fq; } ;

/* Variables and functions */
 int /*<<< orphan*/  fq_flow_get_default_func ; 
 int /*<<< orphan*/  FUNC0 (struct fq*,struct sk_buff*) ; 
 int /*<<< orphan*/  fq_skb_free_func ; 
 int /*<<< orphan*/  FUNC1 (struct fq*,struct fq_tin*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_local *local,
				  struct txq_info *txqi,
				  struct sk_buff *skb)
{
	struct fq *fq = &local->fq;
	struct fq_tin *tin = &txqi->tin;
	u32 flow_idx = FUNC0(fq, skb);

	FUNC2(skb);

	FUNC3(&fq->lock);
	FUNC1(fq, tin, flow_idx, skb,
		       fq_skb_free_func,
		       fq_flow_get_default_func);
	FUNC4(&fq->lock);
}