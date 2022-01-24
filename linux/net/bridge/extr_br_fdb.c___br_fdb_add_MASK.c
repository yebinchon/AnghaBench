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
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  hash_lock; TYPE_1__* dev; } ;
struct ndmsg {int ndm_flags; int /*<<< orphan*/  ndm_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int NTF_EXT_LEARNED ; 
 int NTF_USE ; 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ndmsg *ndm, struct net_bridge *br,
			struct net_bridge_port *p, const unsigned char *addr,
			u16 nlh_flags, u16 vid)
{
	int err = 0;

	if (ndm->ndm_flags & NTF_USE) {
		if (!p) {
			FUNC5("bridge: RTM_NEWNEIGH %s with NTF_USE is not supported\n",
				br->dev->name);
			return -EINVAL;
		}
		FUNC3();
		FUNC6();
		FUNC1(br, p, addr, vid, true);
		FUNC7();
		FUNC4();
	} else if (ndm->ndm_flags & NTF_EXT_LEARNED) {
		err = FUNC0(br, p, addr, vid, true);
	} else {
		FUNC8(&br->hash_lock);
		err = FUNC2(br, p, addr, ndm->ndm_state,
				    nlh_flags, vid, ndm->ndm_flags);
		FUNC9(&br->hash_lock);
	}

	return err;
}