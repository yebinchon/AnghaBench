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
struct wpan_phy {int dummy; } ;
struct wpan_dev {scalar_t__ pan_id; int /*<<< orphan*/  netdev; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct wpan_phy *wpan_phy, struct wpan_dev *wpan_dev,
		      __le16 pan_id)
{
	int ret;

	FUNC0();

	if (wpan_dev->pan_id == pan_id)
		return 0;

	ret = FUNC1(wpan_dev->netdev);
	if (!ret)
		wpan_dev->pan_id = pan_id;

	return ret;
}