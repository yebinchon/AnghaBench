#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  expire; } ;
struct xt_hashlimit_htable {TYPE_1__ cfg; } ;
struct xt_action_param {int hotdrop; int /*<<< orphan*/  thoff; } ;
struct sk_buff {int len; } ;
struct hashlimit_cfg3 {int mode; } ;
struct TYPE_4__ {scalar_t__ current_rate; scalar_t__ burst; int cost; int credit; int /*<<< orphan*/  prev_window; } ;
struct dsthash_ent {int /*<<< orphan*/  lock; TYPE_2__ rateinfo; void* expires; } ;
struct dsthash_dst {int dummy; } ;

/* Variables and functions */
 int XT_HASHLIMIT_BYTES ; 
 int XT_HASHLIMIT_INVERT ; 
 int XT_HASHLIMIT_RATE_MATCH ; 
 struct dsthash_ent* FUNC0 (struct xt_hashlimit_htable*,struct dsthash_dst*,int*) ; 
 struct dsthash_ent* FUNC1 (struct xt_hashlimit_htable*,struct dsthash_dst*) ; 
 int FUNC2 (int,struct dsthash_ent*) ; 
 scalar_t__ FUNC3 (struct xt_hashlimit_htable*,struct dsthash_dst*,struct sk_buff const*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dsthash_ent*,struct xt_hashlimit_htable*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsthash_ent*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC10(const struct sk_buff *skb, struct xt_action_param *par,
		    struct xt_hashlimit_htable *hinfo,
		    const struct hashlimit_cfg3 *cfg, int revision)
{
	unsigned long now = jiffies;
	struct dsthash_ent *dh;
	struct dsthash_dst dst;
	bool race = false;
	u64 cost;

	if (FUNC3(hinfo, &dst, skb, par->thoff) < 0)
		goto hotdrop;

	FUNC4();
	dh = FUNC1(hinfo, &dst);
	if (dh == NULL) {
		dh = FUNC0(hinfo, &dst, &race);
		if (dh == NULL) {
			FUNC5();
			goto hotdrop;
		} else if (race) {
			/* Already got an entry, update expiration timeout */
			dh->expires = now + FUNC6(hinfo->cfg.expire);
			FUNC8(dh, now, hinfo->cfg.mode, revision);
		} else {
			dh->expires = jiffies + FUNC6(hinfo->cfg.expire);
			FUNC7(dh, hinfo, revision);
		}
	} else {
		/* update expiration timeout */
		dh->expires = now + FUNC6(hinfo->cfg.expire);
		FUNC8(dh, now, hinfo->cfg.mode, revision);
	}

	if (cfg->mode & XT_HASHLIMIT_RATE_MATCH) {
		cost = (cfg->mode & XT_HASHLIMIT_BYTES) ? skb->len : 1;
		dh->rateinfo.current_rate += cost;

		if (!dh->rateinfo.prev_window &&
		    (dh->rateinfo.current_rate <= dh->rateinfo.burst)) {
			FUNC9(&dh->lock);
			FUNC5();
			return !(cfg->mode & XT_HASHLIMIT_INVERT);
		} else {
			goto overlimit;
		}
	}

	if (cfg->mode & XT_HASHLIMIT_BYTES)
		cost = FUNC2(skb->len, dh);
	else
		cost = dh->rateinfo.cost;

	if (dh->rateinfo.credit >= cost) {
		/* below the limit */
		dh->rateinfo.credit -= cost;
		FUNC9(&dh->lock);
		FUNC5();
		return !(cfg->mode & XT_HASHLIMIT_INVERT);
	}

overlimit:
	FUNC9(&dh->lock);
	FUNC5();
	/* default match is underlimit - so over the limit, we need to invert */
	return cfg->mode & XT_HASHLIMIT_INVERT;

 hotdrop:
	par->hotdrop = true;
	return false;
}