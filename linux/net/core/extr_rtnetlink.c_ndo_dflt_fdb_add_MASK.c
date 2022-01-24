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
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ndmsg {int ndm_state; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int NLM_F_EXCL ; 
 int NUD_PERMANENT ; 
 int FUNC0 (struct net_device*,unsigned char const*) ; 
 int FUNC1 (struct net_device*,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 scalar_t__ FUNC3 (unsigned char const*) ; 
 scalar_t__ FUNC4 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int FUNC6(struct ndmsg *ndm,
		     struct nlattr *tb[],
		     struct net_device *dev,
		     const unsigned char *addr, u16 vid,
		     u16 flags)
{
	int err = -EINVAL;

	/* If aging addresses are supported device will need to
	 * implement its own handler for this.
	 */
	if (ndm->ndm_state && !(ndm->ndm_state & NUD_PERMANENT)) {
		FUNC5("%s: FDB only supports static addresses\n", dev->name);
		return err;
	}

	if (vid) {
		FUNC5("%s: vlans aren't supported yet for dev_uc|mc_add()\n", dev->name);
		return err;
	}

	if (FUNC4(addr) || FUNC2(addr))
		err = FUNC1(dev, addr);
	else if (FUNC3(addr))
		err = FUNC0(dev, addr);

	/* Only return duplicate errors if NLM_F_EXCL is set */
	if (err == -EEXIST && !(flags & NLM_F_EXCL))
		err = 0;

	return err;
}