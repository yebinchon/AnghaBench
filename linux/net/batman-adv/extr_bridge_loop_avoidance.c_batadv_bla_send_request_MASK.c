#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct batadv_bla_backbone_gw {int /*<<< orphan*/  request_sent; TYPE_2__* bat_priv; int /*<<< orphan*/  vid; int /*<<< orphan*/  orig; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_requests; } ;
struct TYPE_5__ {TYPE_1__ bla; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CLAIM_TYPE_REQUEST ; 
 int /*<<< orphan*/  BATADV_DBG_BLA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_bla_backbone_gw*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct batadv_bla_backbone_gw *backbone_gw)
{
	/* first, remove all old entries */
	FUNC3(backbone_gw);

	FUNC5(BATADV_DBG_BLA, backbone_gw->bat_priv,
		   "Sending REQUEST to %pM\n", backbone_gw->orig);

	/* send request */
	FUNC4(backbone_gw->bat_priv, backbone_gw->orig,
			      backbone_gw->vid, BATADV_CLAIM_TYPE_REQUEST);

	/* no local broadcasts should be sent or received, for now. */
	if (!FUNC1(&backbone_gw->request_sent)) {
		FUNC0(&backbone_gw->bat_priv->bla.num_requests);
		FUNC2(&backbone_gw->request_sent, 1);
	}
}