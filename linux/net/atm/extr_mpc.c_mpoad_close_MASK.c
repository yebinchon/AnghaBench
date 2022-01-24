#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct mpoa_client {TYPE_5__* dev; TYPE_3__* eg_ops; TYPE_2__* in_ops; int /*<<< orphan*/ * mpoad_vcc; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/ * associate_indicator; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 struct mpoa_client* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct lec_priv* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_4__* FUNC7 (struct atm_vcc*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct mpoa_client*) ; 

__attribute__((used)) static void FUNC12(struct atm_vcc *vcc)
{
	struct mpoa_client *mpc;
	struct sk_buff *skb;

	mpc = FUNC2(vcc);
	if (mpc == NULL) {
		FUNC6("did not find MPC\n");
		return;
	}
	if (!mpc->mpoad_vcc) {
		FUNC6("close for non-present mpoad\n");
		return;
	}

	mpc->mpoad_vcc = NULL;
	if (mpc->dev) {
		struct lec_priv *priv = FUNC5(mpc->dev);
		priv->lane2_ops->associate_indicator = NULL;
		FUNC9(mpc);
		FUNC1(mpc->dev);
	}

	mpc->in_ops->destroy_cache(mpc);
	mpc->eg_ops->destroy_cache(mpc);

	while ((skb = FUNC8(&FUNC7(vcc)->sk_receive_queue))) {
		FUNC0(vcc, skb->truesize);
		FUNC3(skb);
	}

	FUNC6("(%s) going down\n",
		(mpc->dev) ? mpc->dev->name : "<unknown>");
	FUNC4(THIS_MODULE);
}