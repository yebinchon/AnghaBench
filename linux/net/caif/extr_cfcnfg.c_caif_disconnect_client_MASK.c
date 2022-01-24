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
typedef  scalar_t__ u8 ;
struct net {int dummy; } ;
struct cflayer {scalar_t__ id; int /*<<< orphan*/  (* ctrlcmd ) (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct cfcnfg {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  mux; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_DEINIT_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cflayer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct cflayer*) ; 
 struct cflayer* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct cfcnfg* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct cflayer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct net *net, struct cflayer *adap_layer)
{
	u8 channel_id;
	struct cfcnfg *cfg = FUNC4(net);

	FUNC0(adap_layer != NULL);
	FUNC1(cfg->ctrl, adap_layer);
	channel_id = adap_layer->id;
	if (channel_id != 0) {
		struct cflayer *servl;
		servl = FUNC3(cfg->mux, channel_id);
		FUNC2(cfg->ctrl, channel_id, adap_layer);
		if (servl != NULL)
			FUNC5(servl, NULL);
	} else
		FUNC6("nothing to disconnect\n");

	/* Do RCU sync before initiating cleanup */
	FUNC8();
	if (adap_layer->ctrlcmd != NULL)
		adap_layer->ctrlcmd(adap_layer, CAIF_CTRLCMD_DEINIT_RSP, 0);
	return 0;

}