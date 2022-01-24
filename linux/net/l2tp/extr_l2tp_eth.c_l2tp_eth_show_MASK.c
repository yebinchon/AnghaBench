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
struct seq_file {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct l2tp_session {int dummy; } ;
struct l2tp_eth_sess {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct l2tp_eth_sess* FUNC2 (struct l2tp_session*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct seq_file *m, void *arg)
{
	struct l2tp_session *session = arg;
	struct l2tp_eth_sess *spriv = FUNC2(session);
	struct net_device *dev;

	FUNC4();
	dev = FUNC3(spriv->dev);
	if (!dev) {
		FUNC5();
		return;
	}
	FUNC0(dev);
	FUNC5();

	FUNC6(m, "   interface %s\n", dev->name);

	FUNC1(dev);
}