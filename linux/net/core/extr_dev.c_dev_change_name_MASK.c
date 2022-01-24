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
struct net_device {int flags; int priv_flags; char const* name; unsigned char name_assign_type; int /*<<< orphan*/  name_hlist; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int IFF_LIVE_RENAME_OK ; 
 int IFF_UP ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  NETDEV_CHANGENAME ; 
 void* NET_NAME_RENAMED ; 
 int FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int FUNC3 (struct net*,struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,char*) ; 
 struct net* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  devnet_rename_seq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,char*) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char) ; 
 scalar_t__ FUNC16 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct net_device *dev, const char *newname)
{
	unsigned char old_assign_type;
	char oldname[IFNAMSIZ];
	int err = 0;
	int ret;
	struct net *net;

	FUNC0();
	FUNC1(!FUNC5(dev));

	net = FUNC5(dev);

	/* Some auto-enslaved devices e.g. failover slaves are
	 * special, as userspace might rename the device after
	 * the interface had been brought up and running since
	 * the point kernel initiated auto-enslavement. Allow
	 * live name change even when these slave devices are
	 * up and running.
	 *
	 * Typically, users of these auto-enslaving devices
	 * don't actually care about slave name change, as
	 * they are supposed to operate on master interface
	 * directly.
	 */
	if (dev->flags & IFF_UP &&
	    FUNC9(!(dev->priv_flags & IFF_LIVE_RENAME_OK)))
		return -EBUSY;

	FUNC19(&devnet_rename_seq);

	if (FUNC16(newname, dev->name, IFNAMSIZ) == 0) {
		FUNC20(&devnet_rename_seq);
		return 0;
	}

	FUNC10(oldname, dev->name, IFNAMSIZ);

	err = FUNC3(net, dev, newname);
	if (err < 0) {
		FUNC20(&devnet_rename_seq);
		return err;
	}

	if (oldname[0] && !FUNC15(oldname, '%'))
		FUNC12(dev, "renamed from %s\n", oldname);

	old_assign_type = dev->name_assign_type;
	dev->name_assign_type = NET_NAME_RENAMED;

rollback:
	ret = FUNC6(&dev->dev, dev->name);
	if (ret) {
		FUNC10(dev->name, oldname, IFNAMSIZ);
		dev->name_assign_type = old_assign_type;
		FUNC20(&devnet_rename_seq);
		return ret;
	}

	FUNC20(&devnet_rename_seq);

	FUNC11(dev, oldname);

	FUNC18(&dev_base_lock);
	FUNC8(&dev->name_hlist);
	FUNC21(&dev_base_lock);

	FUNC17();

	FUNC18(&dev_base_lock);
	FUNC7(&dev->name_hlist, FUNC4(net, dev->name));
	FUNC21(&dev_base_lock);

	ret = FUNC2(NETDEV_CHANGENAME, dev);
	ret = FUNC13(ret);

	if (ret) {
		/* err >= 0 after dev_alloc_name() or stores the first errno */
		if (err >= 0) {
			err = ret;
			FUNC19(&devnet_rename_seq);
			FUNC10(dev->name, oldname, IFNAMSIZ);
			FUNC10(oldname, newname, IFNAMSIZ);
			dev->name_assign_type = old_assign_type;
			old_assign_type = NET_NAME_RENAMED;
			goto rollback;
		} else {
			FUNC14("%s: name change rollback failed: %d\n",
			       dev->name, ret);
		}
	}

	return err;
}