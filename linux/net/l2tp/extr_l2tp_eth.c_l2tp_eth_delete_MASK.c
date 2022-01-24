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
struct net_device {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct l2tp_eth_sess {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 struct l2tp_eth_sess* FUNC0 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct l2tp_session *session)
{
	struct l2tp_eth_sess *spriv;
	struct net_device *dev;

	if (session) {
		spriv = FUNC0(session);

		FUNC3();
		dev = FUNC2(spriv->dev);
		if (dev) {
			FUNC5(dev);
			FUNC4();
			FUNC1(THIS_MODULE);
		} else {
			FUNC4();
		}
	}
}