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
struct xt_tgdtor_param {struct xt_tee_tginfo* targinfo; int /*<<< orphan*/  net; } ;
struct xt_tee_tginfo {TYPE_1__* priv; } ;
struct tee_net {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tee_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tee_net_id ; 
 int /*<<< orphan*/  xt_tee_enabled ; 

__attribute__((used)) static void FUNC6(const struct xt_tgdtor_param *par)
{
	struct tee_net *tn = FUNC4(par->net, tee_net_id);
	struct xt_tee_tginfo *info = par->targinfo;

	if (info->priv) {
		FUNC2(&tn->lock);
		FUNC1(&info->priv->list);
		FUNC3(&tn->lock);
		FUNC0(info->priv);
	}
	FUNC5(&xt_tee_enabled);
}