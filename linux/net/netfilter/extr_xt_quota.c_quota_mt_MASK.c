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
struct xt_quota_priv {scalar_t__ quota; int /*<<< orphan*/  lock; } ;
struct xt_quota_info {int flags; struct xt_quota_priv* master; } ;
struct xt_action_param {scalar_t__ matchinfo; } ;
struct sk_buff {scalar_t__ len; } ;

/* Variables and functions */
 int XT_QUOTA_INVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct xt_quota_info *q = (void *)par->matchinfo;
	struct xt_quota_priv *priv = q->master;
	bool ret = q->flags & XT_QUOTA_INVERT;

	FUNC0(&priv->lock);
	if (priv->quota >= skb->len) {
		priv->quota -= skb->len;
		ret = !ret;
	} else {
		/* we do not allow even small packets from now on */
		priv->quota = 0;
	}
	FUNC1(&priv->lock);

	return ret;
}